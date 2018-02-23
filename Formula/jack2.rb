class Jack2 < Formula
  desc "Audio Connection Kit - Jack2"
  homepage "http://jackaudio.org"
  url "git@github.com:jackaudio/jack2.git", :using => :git

  depends_on "pkg-config" => :build
  depends_on "aften"
  depends_on "libsndfile"
  depends_on "libsamplerate"
  depends_on "opus"
  depends_on "readline"

  def install
    system "./waf", "configure", "--opus=no", "--readline=no"
    system "./waf", "build"
    system "./waf", "install", "-f"
  end
end
