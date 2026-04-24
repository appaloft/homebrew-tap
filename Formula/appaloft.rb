class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.4.0/appaloft-v0.4.0-darwin-arm64.tar.gz"
      sha256 "c415d6841512d88724cfc18e845a844b83e6250b6e1231e9558fe333d2d364a9"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.4.0/appaloft-v0.4.0-darwin-x64.tar.gz"
      sha256 "80b55aafbec2fd4da096cf1f16bfac69c8fb7b7f47aac4dc0af3b1c3e1be126c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.4.0/appaloft-v0.4.0-linux-arm64-gnu.tar.gz"
      sha256 "c6ba99acdfc7e72e17a79059bcb88abc437faf143e93add9dbf459564f1db10f"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.4.0/appaloft-v0.4.0-linux-x64-gnu.tar.gz"
      sha256 "a8c0718d59a32c9927684d7552b21da118b5eb939213f477c91700970b21433c"
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
