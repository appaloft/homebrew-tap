class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.1/appaloft-v0.12.1-darwin-arm64.tar.gz"
      sha256 "86bf5adb9bba5bb8d0dca1afdc1f6cb54da12eb82667c9b8c2e02bbfa777a1aa"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.1/appaloft-v0.12.1-darwin-x64.tar.gz"
      sha256 "63bbdb1d662f0dac89b189ec3f855180bc08cd042af11d459d53c997a47a302a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.1/appaloft-v0.12.1-linux-arm64-gnu.tar.gz"
      sha256 "1aec8ee9e7112e6da2a28836ac9d70d4e675e8e240257de9962bfeea92a5f5c4"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.12.1/appaloft-v0.12.1-linux-x64-gnu.tar.gz"
      sha256 "74fc76111a1fd89f2df116ebe3b2bb8a40d6642282e824ad906f21b728e5c982"
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
