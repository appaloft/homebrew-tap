class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.9.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.4/appaloft-v0.9.4-darwin-arm64.tar.gz"
      sha256 "f2c8bb72e3bc04ab5ca58e45b93f2cf9ff87445e2d5d838b410507bc4f037e9f"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.4/appaloft-v0.9.4-darwin-x64.tar.gz"
      sha256 "3cec48a88f7c8ee56ff114a0b58eac00eee34806cf077454f3ab06c05aa77302"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.4/appaloft-v0.9.4-linux-arm64-gnu.tar.gz"
      sha256 "44fef6d137bcfccba83385cc9266394a81e5d7da1e2707d5aa5e4ce44371f22a"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.4/appaloft-v0.9.4-linux-x64-gnu.tar.gz"
      sha256 "7852be07aa3f1021e1e548d4438707e6f0c3b7d9e95674e26be0a350fc26a93c"
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
