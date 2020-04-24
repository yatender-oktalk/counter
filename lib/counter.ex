defmodule Counter do
  @moduledoc """
  Apis for `Counter`.
  """

  @spec start(number()) :: pid()
  def start(initial_count) do
    spawn(fn -> Counter.Server.run(initial_count) end)
  end

  @spec tick(pid()) :: {atom(), pid()}
  def tick(pid) do
    send(pid, {:tick, self()})
  end

  @spec state(pid()) :: number()
  def state(pid) do
    send(pid, {:state, self()})

    receive do
      {:count, count} ->
        count
    end
  end
end
