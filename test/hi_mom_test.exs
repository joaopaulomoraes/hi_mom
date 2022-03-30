defmodule HiMomTest do
  use ExUnit.Case
  doctest HiMom

  test "hi mom" do
    assert HiMom.hi_mom() == "Hi, mom!"
  end
end
