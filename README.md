# TodoServer

**TODO: Add description**

In this example, you’ll build a TodoServer module that keeps this abstraction in the
private state. Let’s see how the server is used:

````elixir
iex(1)> todo_server = TodoServer.start()
iex(2)> TodoServer.add_entry(todo_server,
%{date: ~D[2018-12-19], title: "Dentist"})
iex(3)> TodoServer.add_entry(todo_server,
%{date: ~D[2018-12-20], title: "Shopping"})
iex(4)> TodoServer.add_entry(todo_server,
%{date: ~D[2018-12-19], title: "Movies"})
iex(5)> TodoServer.entries(todo_server, ~D[2018-12-19])
[
%{date: ~D[2018-12-19], id: 3, title: "Movies"},
%{date: ~D[2018-12-19], id: 1, title: "Dentist"}
]

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `todo_server` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:todo_server, "~> 0.1.0"}
  ]
end
````

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/todo_server](https://hexdocs.pm/todo_server).
