require "formula"

HOMEBREW_HTTR_VERSION='v0.1.0'

class Stopho < Formula
  if Hardware.is_64_bit?
    url "https://github.com/kohei-kimura/stopho/releases/download/#{HOMEBREW_HTTR_VERSION}/stopho_darwin_386"
    sha256 "8dfb0e60a6d6cea7719564e7754f54b0132a8bfdf4febca06521f4baa47dd4f2"
  else
    url "https://github.com/kohei-kimura/stopho/releases/download/#{HOMEBREW_HTTR_VERSION}/stopho_darwin_amd64"
    sha256 "146f2cbda8440c4e01f839d391aeea84fb16d9f3d9d4f94fc601c978885e8d2f"
  end
  homepage "https://github.com/kohei-kimura/stopho"

  version HOMEBREW_HTTR_VERSION
  head 'https://github.com/kohei-kimura/stopho.git', :branch => 'master'

  def install
    bin.install 'httr'
  end

end
