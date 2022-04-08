defmodule HiTest do
  use ExUnit.Case
  doctest Hi

  test "should say hi mom" do
    assert Hi.mom() == "Hi, mom!"
  end

  test "should say hi kate" do
    assert Hi.mom("Kate") == "Hi, Kate!"
  end

  test "should say hi to maria in portuguese" do
    assert Hi.mom("Maria", :pt) == "Oi, Maria!"
  end

  test "should say hi to esmeralda in spanish" do
    assert Hi.mom("Esmeralda", :es) == "Hola, Esmeralda!"
  end

  test "should say hi mom when the name is nil" do
    assert Hi.mom(nil) == "Hi, mom!"
  end

  test "should say hi mom whithout specify a name in portuguese" do
    assert Hi.mom(nil, :pt) == "Oi, mãe!"
  end

  test "should not say hi dad" do
    assert Hi.mom("dad") != "Hi, mom!"
  end
end
