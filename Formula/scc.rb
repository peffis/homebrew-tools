class Scc < Formula
  desc "Stagecast controller"
  homepage "https://stagecast.io"
  url "https://stagecast.se/media/scc-0.1.3.tar.gz"
  sha256 "66167c327a54e52ee6d3dff269982ce2798983d75ecd643f7681a2b4b042dff9"

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
