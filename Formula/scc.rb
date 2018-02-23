class Scc < Formula
  desc "Stagecast controller"
  homepage "https://stagecast.io"
  url "https://stagecast.se/media/scc-0.1.2.tar.gz"
  sha256 "c47e9dbb398a028f76b29b46c077033c8ccde2f10bf35b9a9fdc7f99d978f84c"

  bottle :unneeded

  depends_on "peffis/tools/ltc-tools"
  depends_on "gbevin/tools/sendmidi"
  depends_on "gbevin/tools/receivemidi"

  def install
    bin.install "scc"
  end

  test do
    system "#{bin}/scc", "-v"
  end
end
