defmodule NoddyTest.Application do

  use Application

  def start(_type, _args) do

    config = Noddy.start_from_config(NoddyTest.Config)

    IO.puts "BACK FROM START"

    children = [
    ]


    # opts = [strategy: :one_for_one, name: NoddyTest.Supervisor]
    # Supervisor.start_link(children, opts)
    { :ok, self()}
  end
end
