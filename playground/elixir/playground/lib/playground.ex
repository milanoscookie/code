defmodule Playground do
  @moduledoc """
  Documentation for Playground.
  """

  @doc """
  Hello world.

  ## Examples

  iex> Playground.hello
  :world

  """

  absoluteVal = fn(a) -> abs(a) end
  current_process = self()

  # Spawn an Elixir process (not an operating system one!)
  spawn_link(fn ->
    send current_process, {:msg, "hello world"}
  end)

  Block until the message is received
  receive do
    {:msg, contents} -> IO.puts contents
  end
  IO.puts abs(-8)
  
  def hello do
    :world
  end
end
