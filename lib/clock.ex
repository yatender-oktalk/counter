defmodule Clock do
  def start(f) do
    run(f, 0)
  end

  def run(your_heart_desire, counter) do
    your_heart_desire.(counter)
    new_count = Counter.Core.inc(counter)
    :timer.sleep(1_000)
    run(your_heart_desire, new_count)
  end
end
