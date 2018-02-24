class Scc < Formula
  desc "Stagecast controller"
  homepage "https://stagecast.io"
  url "https://stagecast.se/media/scc-0.1.2.tar.gz"
  sha256 "4625ca769d100707bdd7ff02d8a900b1c54d2c551d22602013ec7877668b5d71"

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
