class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.9.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.5/appaloft-v1.9.5-darwin-arm64.tar.gz"
      sha256 "2ae47a8532037658d5497b8004a2f9c6aac72f64038b3c92a296628f075abb05"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.5/appaloft-v1.9.5-darwin-x64.tar.gz"
      sha256 "8760f7cfbd05d061c137c7f4d554410dba6f980a7d70fa5ed95326e36f1148f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.5/appaloft-v1.9.5-linux-arm64-gnu.tar.gz"
      sha256 "2e0a2e259fd6ed8056ef35475419309a7faa361c0f1a533edf51af33b10d852f"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.9.5/appaloft-v1.9.5-linux-x64-gnu.tar.gz"
      sha256 "04b55d5917d5168827778dafeb7a5532b3578d55ebc8efcd1695189818ba4c7f"
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
