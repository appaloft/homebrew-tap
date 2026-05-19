class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.12/appaloft-v1.0.0-rc.12-darwin-arm64.tar.gz"
      sha256 "31bac29629db1da1b7eeb0921b1409d57103faea8081baad300f6b66add968e5"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.12/appaloft-v1.0.0-rc.12-darwin-x64.tar.gz"
      sha256 "3ba38114f26797799bd5d13f3d12ebee178e963989e9c344cc2971d166b13423"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.12/appaloft-v1.0.0-rc.12-linux-arm64-gnu.tar.gz"
      sha256 "102a45fb20669f5756435c5765a33bd0711ae2b5d4abef60c8238b8e9686dc47"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.12/appaloft-v1.0.0-rc.12-linux-x64-gnu.tar.gz"
      sha256 "c85a78c5133e9a5283d199126e8cf0c7bb961a30040afe798753c88053e7a30c"
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
