class Scc < Formula
  desc "Stagecast controller"
  homepage "https://stagecast.io"
  url "https://stagecast.se/media/scc-0.1.1.tar.gz"
  sha256 "e49e6e2dab2a86c8480135942346b901314da7eb8e64b7d7e013a974d0b311c4"

  bottle :unneeded

  depends_on "ltctools"
  depends_on "gbevin/tools/sendmidi"
  depends_on "gbevin/tools/receivemidi"

  def install
    bin.install "scc"
  end

  test do
    system "#{bin}/scc", "-v"
  end
end
