# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Tun2socks < Formula
    desc ""
    homepage ""
    version "0.0.4"
    license "MIT"

    url "https://github.com/aaaa777/anytun/releases/download/v0.0.4/anytun.tar.gz"
    sha256 "3d0754ff16504ca675e6d9e62f70ca001a622f90c3b5b8538b59e6f0598dfa49"
  
  def install
    bin.install "tun2socks/arm64/tun2socks"
  end

  test do
    system "false"
  end
end