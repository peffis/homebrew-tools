class Scc < Formula
  desc "Stagecast controller"
  homepage "https://stagecast.io"
  url "https://stagecast.se/media/scc-1.0.0.tar.gz"
  sha256 "a7a9d7e799883c90ea6703aaf11cd02d1f1960c747189e119157a146b113dafe"

  bottle :unneeded

  depends_on "peffis/tools/ltc-tools"
  depends_on "gbevin/tools/sendmidi"
  depends_on "gbevin/tools/receivemidi"

  def install
    bin.install "scc" "runscc.sh"
  end

  test do
    system "#{bin}/scc", "-v"
  end
end
