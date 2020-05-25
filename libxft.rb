# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Libxft < Formula
  desc "Client side font rendering library"
  homepage ""
  url "https://github.com/freedesktop/libXft/archive/libXft-2.3.2.tar.gz"
  sha256 "58b86c0388de2b6f4b3182be6091cd03aef17c1d5a1252e7334494a8b3b54f3f"

  def install
    ENV["PATH"] += ":/usr/local/bin"
    ENV["PKG_CONFIG_PATH"] = "/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig"
    ENV["CC"] = "/usr/bin/clang"
    system "./autogen.sh", "--prefix=#{prefix}"
    system "make", "CC=/usr/bin/clang"
    system "make", "install"
  end

  depends_on "fontconfig"
  depends_on "freetype"

  test do
    system "false"
  end
end
