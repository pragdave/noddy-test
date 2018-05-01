defmodule NoddyTestTest do
  use ExUnit.Case
  doctest NoddyTest

  test "greets the world" do
    assert NoddyTest.hello() == :world
  end
end
