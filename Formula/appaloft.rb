class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.5/appaloft-v1.8.5-darwin-arm64.tar.gz"
      sha256 "b0a91f47eff02ba847555c897f6184a257c88b48461dbca7a2a983b12e42271d"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.5/appaloft-v1.8.5-darwin-x64.tar.gz"
      sha256 "27304a80da83dadd87ef8e5625efbfaf9b4e16a4dc292feb87b573bf2405b4e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.5/appaloft-v1.8.5-linux-arm64-gnu.tar.gz"
      sha256 "de441f76e0713e7ff0ed3c0dfb99cdb75f8602f1ace214340f5d901dbb07474b"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.5/appaloft-v1.8.5-linux-x64-gnu.tar.gz"
      sha256 "bc4e9135f38c29a426230eac110c7a09fabe13a331cde6f17f7563b528b17c16"
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
