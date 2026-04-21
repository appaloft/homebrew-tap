class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.5/appaloft-v0.2.5-darwin-arm64.tar.gz"
      sha256 "d646fea224a5ced6274aa0db7475f7d11f5cf0b2c08b79acab6eaac70aa1794f"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.5/appaloft-v0.2.5-darwin-x64.tar.gz"
      sha256 "39252bb49058150f553ddebe58979b6901b9a16dac815ad81c5ac5df38f729f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.5/appaloft-v0.2.5-linux-arm64-gnu.tar.gz"
      sha256 "bcf79e2768f36937499f5980e99adabc0f5ac02d90c5166de13a6e57e94cc5a4"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.5/appaloft-v0.2.5-linux-x64-gnu.tar.gz"
      sha256 "f449055cda4c74c7f4187c656928321ddc86a58db531f24a567ba083af69de36"
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
