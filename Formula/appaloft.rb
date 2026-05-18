class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.6/appaloft-v1.0.0-rc.6-darwin-arm64.tar.gz"
      sha256 "b67583d1ee61993ae2036983c2a67901fced70ddd68cfcb6866baf52006b8a38"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.6/appaloft-v1.0.0-rc.6-darwin-x64.tar.gz"
      sha256 "82056e3c57aaeffed7106b9301ee17f2f6468efa7d89064d1465827645ae372f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.6/appaloft-v1.0.0-rc.6-linux-arm64-gnu.tar.gz"
      sha256 "ea20785732581ccbf6eeec4908d6760208fb53c0db068a916ce3dbe3d411e434"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.6/appaloft-v1.0.0-rc.6-linux-x64-gnu.tar.gz"
      sha256 "12c6e0b0d676e59f0fd2f8d26073806bbbeb0244ee8b2f94b195546191ed51e3"
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
