defmodule CounterTest do
  use ExUnit.Case
  doctest Counter

  test "use counter via APIs" do
    pid = Counter.start(0)
    pid2 = Counter.start(5)

    assert 0 == Counter.state(pid)

    Counter.tick(pid)
    Counter.tick(pid)

    assert 2 == Counter.state(pid)

    # Check second counter
    assert 5 == Counter.state(pid2)
    Counter.tick(pid2)
    Counter.tick(pid2)

    assert 7 == Counter.state(pid2)
  end
end
