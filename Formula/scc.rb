class Scc < Formula
  desc "Stagecast controller"
  homepage "https://stagecast.io"
  url "https://stagecast.se/media/scc-0.1.7.tar.gz"
  sha256 "734f23177aa4d2f9747ec5e5be179ab6d5c758f66cacf991d0a88350b70cd284"

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
