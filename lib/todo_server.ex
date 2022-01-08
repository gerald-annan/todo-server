defmodule TodoServer do
  @moduledoc """
  Documentation for `TodoServer`.
  """
  def start() do
    spawn(TodoServer, :func, [TodoList.new()])
  end

  def add_entry(pid, new_entry) do
    send(pid, {:add, new_entry})
  end

  def entries(pid, key) do
    send(pid, {:entries, key, self()})

    receive do
      {:entries, result} -> result
    end
  end

  def func(todoList) do
    receive do
      {:add, new_entry} ->
        TodoList.add(todoList, new_entry)
        |> func()

      {:entries, key, pid} ->
        TodoList.entries(todoList, key, pid)
        |> func()
    end
  end
end
