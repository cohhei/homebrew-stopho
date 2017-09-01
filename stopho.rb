require "formula"

VERSION='v0.1.1'

class Stopho < Formula
  if Hardware::CPU.is_64_bit?
    url "https://github.com/kohei-kimura/stopho/releases/download/#{VERSION}/stopho_darwin_386"
    sha256 "841a952bd37d68dc7d69efa7e4f9f685ea0257dc5ce6d0186c4d54ebd9f6c3ac"
  else
    url "https://github.com/kohei-kimura/stopho/releases/download/#{VERSION}/stopho_darwin_amd64"
    sha256 "cb35b2a0defcc27fadd8f344512953835f97e00e6e9f16689adb781d5ac44013"
  end
  homepage "https://github.com/kohei-kimura/stopho"

  version VERSION
  head 'https://github.com/kohei-kimura/stopho.git', :branch => 'master'

  def install
    system "mv stopho* stopho"
    bin.install "stopho"
  end

end
