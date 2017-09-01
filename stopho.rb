require "formula"

VERSION='v0.1.1'

class Stopho < Formula
  if Hardware::CPU.is_64_bit?
    url "https://github.com/kohei-kimura/stopho/releases/download/#{VERSION}/stopho_darwin_386"
    sha256 "d0aabb0885d3136cdcefcd0260b69989aa40f8c297939997f71df32d0fa2aace"
  else
    url "https://github.com/kohei-kimura/stopho/releases/download/#{VERSION}/stopho_darwin_amd64"
    sha256 "8a4af554335350de17610d09763a7731fc261d0e07498ac5b7eea0db3354b628"
  end
  homepage "https://github.com/kohei-kimura/stopho"

  version VERSION
  head 'https://github.com/kohei-kimura/stopho.git', :branch => 'master'

  def install
    system "mv stopho* stopho"
    bin.install "stopho"
  end

end
