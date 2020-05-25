# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class XorgMacros < Formula
  desc "X.org macros utilities."
  homepage ""
  url "https://github.com/freedesktop/xorg-macros/archive/util-macros-1.19.1.tar.gz"
  sha256 "353eca5062146b29933a5862f6bfb6d52cdbac4aff6f3ad8558a507e44ded52a"

  def install
    ENV["PATH"] += ":/usr/local/bin"
    system "./autogen.sh", "--prefix=#{prefix}"
    system "make", "install"
    (lib/"pkgconfig").install "xorg-macros.pc"
  end

  test do
    system "false"
  end
end
