defmodule ThumborClientTest do
  use ExUnit.Case

  doctest ThumborClient

  @key "123"
  @path "500/500/image.jpg"

  test "#encrypt_to_thumbor when pass a key" do
    assert ThumborClient.encrypt_to_thumbor(@key, @path) == "VMKhXMULBn4h1UC52W3YliEgFfg="
  end

  test "#encrypt_to_thumbor when using unsafe mode" do
    assert ThumborClient.encrypt_to_thumbor(false, @path) == "unsafe"
  end
end
