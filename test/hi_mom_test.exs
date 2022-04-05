defmodule HiTest do
  use ExUnit.Case
  doctest Hi

  test "should say hi mom" do
    assert Hi.mom() == "Hi, mom!"
  end

  test "should say hi kate" do
    assert Hi.mom("Kate") == "Hi, Kate!"
  end

  test "should say hi to maria from pt" do
    assert Hi.mom("Maria", :pt) == "Oi, Maria!"
  end

  test "should say hi mom whithout specify a name from pt" do
    assert Hi.mom(nil, :pt) == "Oi, mãe!"
  end

  test "should not say hi dad" do
    assert Hi.mom("dad") != "Hi, mom!"
  end
end
