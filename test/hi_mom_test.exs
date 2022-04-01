defmodule HiMomTest do
  use ExUnit.Case
  doctest HiMom

  test "should say hi mom" do
    assert HiMom.hi_mom() == "Hi, mom!"
  end

  test "should say hi kate" do
    assert HiMom.hi_mom("Kate") == "Hi, Kate!"
  end

  test "should say hi to maria from pt" do
    assert HiMom.hi_mom("Maria", :pt) == "Oi, Maria!"
  end

  test "should say hi mom whithout specify a name from pt" do
    assert HiMom.hi_mom(nil, :pt) == "Oi, mãe!"
  end

  test "should not say hi dad" do
    assert HiMom.hi_mom("dad") != "Hi, mom!"
  end
end
