class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.10.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.7/appaloft-v1.10.7-darwin-arm64.tar.gz"
      sha256 "6ab561ef889fb07eb07406a857a4ac400f8868f2aed06049b6ad28f76b2b7b04"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.7/appaloft-v1.10.7-darwin-x64.tar.gz"
      sha256 "c8c250d5e03c0d94101685619c113da35e7373cc96b2f6c72f3331292c1c26c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.7/appaloft-v1.10.7-linux-arm64-gnu.tar.gz"
      sha256 "c6ff33942be9995cffa934dacd6eb4137c1b8e324a3d58f8500e2030508bf0c1"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.7/appaloft-v1.10.7-linux-x64-gnu.tar.gz"
      sha256 "d113e523065a2b9cd5983dad71ca08deb04a07b308112ac84278fcf7076cc1c3"
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
