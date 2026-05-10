class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.9.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.10/appaloft-v0.9.10-darwin-arm64.tar.gz"
      sha256 "46655800f15aa673220cfdbd13413ffdf41e34155e3e5cfe18a6af33c0aed7fa"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.10/appaloft-v0.9.10-darwin-x64.tar.gz"
      sha256 "8718bc8ebbb0fbbee1307aa036da226cb09edf3cb4019b24bab067a714f86478"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.10/appaloft-v0.9.10-linux-arm64-gnu.tar.gz"
      sha256 "0b425c27e476b05b8772f5e827977b3ed99f0e71860abc156e7d77181e552dac"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.10/appaloft-v0.9.10-linux-x64-gnu.tar.gz"
      sha256 "99a2dcae2daf2118df265e9e7a51e515bfcc83f1d82287071fa5c27708ef39b8"
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
