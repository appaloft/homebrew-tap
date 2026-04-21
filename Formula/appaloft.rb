class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.6/appaloft-v0.2.6-darwin-arm64.tar.gz"
      sha256 "15f3f038be559af554b7c645b3b664ee5de9f4fe0051c6655a5e1e5cf876580c"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.6/appaloft-v0.2.6-darwin-x64.tar.gz"
      sha256 "ac6315ffb19c860a0a1a52342dfed96c303be718aacb7a296bf72c5ef29478a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.6/appaloft-v0.2.6-linux-arm64-gnu.tar.gz"
      sha256 "a74e1cc2acf1a2ca330d8b73e4522359ec9acad6a3ebbbb53ceb6ef2b2d70e6b"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.6/appaloft-v0.2.6-linux-x64-gnu.tar.gz"
      sha256 "19a677b89296ed76f29febb9ae1e3f403daecfb7ce47a22ad2562906bd246b9b"
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
