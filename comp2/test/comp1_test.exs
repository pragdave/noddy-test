defmodule Comp1Test do
  use ExUnit.Case
  doctest Comp1

  test "greets the world" do
    assert Comp1.hello() == :world
  end
end
