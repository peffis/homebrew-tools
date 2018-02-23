class Libltc < Formula
  desc "POSIX-C Library for handling Linear/Logitudinal Time Code (LTC) - built against Jack2"
  homepage "https://x42.github.io/libltc/"
  url "https://github.com/x42/libltc/releases/download/v1.3.0/libltc-1.3.0.tar.gz"
  sha256 "aab1de052bc61fbac6ea66d88f04e95b7d5faa1ef297b95ea6a1a548c87dee5c"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
