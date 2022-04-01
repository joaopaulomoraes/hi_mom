defmodule HiMomTest do
  use ExUnit.Case
  doctest HiMom

  test "hi mom" do
    assert HiMom.hi_mom() == "Hi, mom!"
  end

  test "hi kate" do
    assert HiMom.hi_mom("Kate") == "Hi, Kate!"
  end

  test "hi maria from pt" do
    assert HiMom.hi_mom("Maria", :pt) == "Oi, Maria!"
  end

  test "hi whithout specify a name from pt" do
    assert HiMom.hi_mom(nil, :pt) == "Oi, mãe!"
  end
end
