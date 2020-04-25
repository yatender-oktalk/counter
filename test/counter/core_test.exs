defmodule Counter.CoreTest do
  use ExUnit.Case
  alias Counter.Core

  test "increments the passed number" do
    assert Core.inc(1) == 2
    refute Core.inc(1) == 3
  end
end
