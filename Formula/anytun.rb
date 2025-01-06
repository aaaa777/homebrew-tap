# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Anytun < Formula
    desc ""
    homepage ""
    version "0.1.2"
    license "MIT"

    url "https://github.com/aaaa777/anytun/releases/download/v0.1.2/brew-tarball.tar.gz"
    sha256 "0d92f4b1dff3141bba6cc0f3dacb5f6bd693fdfd99b647ecfbd689760e9780e7"
       
    depends_on "coredns"
    depends_on "v2ray"
    depends_on "aaaa777/tap/tun2socks"
  
  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    
    # make build
    # system 'make', 'build', "BREW_BUILD=1"
    system 'make', 'build', "CONFIG_DIR=#{etc/"anytun"}", "TEMPLATE_CONFIG_DIR=."
    system 'ls -lha'
    system 'pwd'
    
    # resource("anytun").stage do
    [
      "build/anytun",
      "build/anytund"
    ].each do |file|
      bin.install file
    end

    [
      "Anytun.hosts",
      "BypassDomains.txt",
      "client-config.json",
    ].each do |file|
      (etc/"anytun").install file
    end
    # system 'false'
  end

  service do
    require_root true
    # environment_variables CONFIG_DIR: etc/"anytun"
    run [bin/"anytund", "serve"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test anytun`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    # 
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end