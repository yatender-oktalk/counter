defmodule Counter.Server do
  @moduledoc """
  This module deal with the state persistance of the counter
  """

  @spec run(number) :: no_return
  def run(count) do
    count
    |> listen()
    |> run()
  end

  @spec listen(number()) :: number()
  def listen(count) do
    receive do
      {:tick, _pid} ->
        Counter.Core.inc(count)

      {:state, pid} ->
        send(pid, {:count, count})
        count
    end
  end
end
