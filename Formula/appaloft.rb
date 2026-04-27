class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.6.0/appaloft-v0.6.0-darwin-arm64.tar.gz"
      sha256 "4a6c1160ee32a7c732f826da8f19e90ab457731088a75546763d54b9d9435aa2"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.6.0/appaloft-v0.6.0-darwin-x64.tar.gz"
      sha256 "d470cc9eeecfea908148ce38f3fbf4b4f0ca919d1a43698bd8d93a2cf1d33016"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.6.0/appaloft-v0.6.0-linux-arm64-gnu.tar.gz"
      sha256 "204c35b04eb159019a593f7953111cd675f36b0347f35465a8f05d7d49d45254"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.6.0/appaloft-v0.6.0-linux-x64-gnu.tar.gz"
      sha256 "79a0435b10fcd4247cbb7323591596578296f011c30a8ab2d68894d6ad60c4a6"
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
