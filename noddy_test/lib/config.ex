defmodule NoddyTest.Config do

  # Node definitions

  def all_nodes do
    [ :n1, :n2 ]
  end

  def nodes(:dev) do
    [ n1:  localhost(), n2: localhost() ]
  end

  def nodes(:test) do
    nodes(:dev)
  end

  def nodes(:prod) do
    [
      n1: "127.0.0.1",
      *:  "192.168.0.1",
    ]
  end

  # Components

  def components do
    %{
       comp1:     :n1, #, :n2 ] ], #, implemented_by: :dict ],
       comp2:     :n2,
    }
  end


  defp localhost, do: "127.0.0.1"

end
