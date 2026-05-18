class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.7/appaloft-v1.0.0-rc.7-darwin-arm64.tar.gz"
      sha256 "cba4681ac091770f1bf2a794044978e40a729524e2e36f9f7f46feaacbcc0a9f"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.7/appaloft-v1.0.0-rc.7-darwin-x64.tar.gz"
      sha256 "4dcb5d163ec926896ee27b4c88a020e2dbe2f3ed28f9a403644e5f9f88fc012b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.7/appaloft-v1.0.0-rc.7-linux-arm64-gnu.tar.gz"
      sha256 "3fbd9ff1bb59edd31a54ab7433bea961ebd85781a4e4ed73de341f7ec3928c88"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.7/appaloft-v1.0.0-rc.7-linux-x64-gnu.tar.gz"
      sha256 "c256509d21d506e1f381ab5b932568825b68898ff3fda387d9f85671f1a9718e"
    end
  end

  def install
    binary = Dir["appaloft-v#{version}-*/appaloft"].first || "appaloft"
    bin.install binary => "appaloft"
  end

  test do
    system "#{bin}/appaloft", "doctor"
  end
end
