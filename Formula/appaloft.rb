class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.6.4/appaloft-v1.6.4-darwin-arm64.tar.gz"
      sha256 "29df029552b42d20add6cba42732ae3fdd916ccd06ab4dfc4ca66ce0ea90f481"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.6.4/appaloft-v1.6.4-darwin-x64.tar.gz"
      sha256 "1764a846036c2e963f0af4df3e8a1e35cf528d1c1f380812a62ff4560b7c6699"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.6.4/appaloft-v1.6.4-linux-arm64-gnu.tar.gz"
      sha256 "b429dbcd6fe3661aa799a492c5643f968eef4a72b4b7004a5a9ee3545feaf5e9"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.6.4/appaloft-v1.6.4-linux-x64-gnu.tar.gz"
      sha256 "bf057863a910f3d1c5faffc357f41c624dd5d77079352ac0c644b10351077b9e"
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
