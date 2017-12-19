require "formula"

VERSION='v0.2.0'

class Stopho < Formula
  if Hardware::CPU.is_64_bit?
    url "https://github.com/kohei-kimura/stopho/releases/download/#{VERSION}/stopho_darwin_386"
    sha256 "5173f60de47eba97fb4c3d3ab5a894f3f55c6d463c393bb4eeb54ab48ed72d64"
  else
    url "https://github.com/kohei-kimura/stopho/releases/download/#{VERSION}/stopho_darwin_amd64"
    sha256 "c8a78a2e13cda1417ba513a03cd33ea18bfd400bece86e58e067dd9f36bc4345"
  end
  homepage "https://github.com/kohei-kimura/stopho"

  version VERSION
  head 'https://github.com/kohei-kimura/stopho.git', :branch => 'master'

  def install
    system "mv stopho* stopho"
    bin.install "stopho"
  end

end
