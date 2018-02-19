class Scc < Formula
  desc "Stagecast controller"
  homepage "https://stagecast.io"
  url "https://stagecast.se/media/scc-0.1.2.tar.gz"
  sha256 "4691cd6bf39fd31eb24fcb6bb1e337b9ba1eb17d0a6b8ac446fede8fc850c142"

  bottle :unneeded

  depends_on "ltc-tools"
  depends_on "gbevin/tools/sendmidi"
  depends_on "gbevin/tools/receivemidi"

  def install
    bin.install "scc"
  end

  test do
    system "#{bin}/scc", "-v"
  end
end
