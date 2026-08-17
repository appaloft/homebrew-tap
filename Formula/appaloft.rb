class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.9/appaloft-v1.8.9-darwin-arm64.tar.gz"
      sha256 "57f39af7fc3ec40d53adf10b1648e38bbb24dd8911f9a1d17f1ef7fdd832805a"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.9/appaloft-v1.8.9-darwin-x64.tar.gz"
      sha256 "8bdb1c8670eb5daa4a036859bdba4c6e4f983fce817508157466d56f6b544171"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.9/appaloft-v1.8.9-linux-arm64-gnu.tar.gz"
      sha256 "001f16392f85659e141f4f496d2ac4dd699d0ef2fcf3bcf1308b65e113d72f59"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.9/appaloft-v1.8.9-linux-x64-gnu.tar.gz"
      sha256 "7c8d10eec6de54f517110dd605a21c55d68fb09e3d48204a28d4b4800307a5e2"
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
