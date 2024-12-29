# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Anytun < Formula
    desc ""
    homepage ""
    url "https://github.com/aaaa777/anytun/releases/download/v0.0.4/anytun.tar.gz"
    version "0.0.4"
    sha256 "3d0754ff16504ca675e6d9e62f70ca001a622f90c3b5b8538b59e6f0598dfa49"
    license "MIT"
       
    depends_on "coredns"
    depends_on "v2ray-core"
  
  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system 'ls -lha'
    system 'pwd'
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