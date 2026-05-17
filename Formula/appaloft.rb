class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.3/appaloft-v1.0.0-rc.3-darwin-arm64.tar.gz"
      sha256 "8c596ad176c514e64bea4a88db9e7e8b1bba598d7f3862e86e8a00ba5bcd3ef4"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.3/appaloft-v1.0.0-rc.3-darwin-x64.tar.gz"
      sha256 "fd7915c52720c3c0f25c55a87dd740557586644f3b6db73a24a894597a1bddd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.3/appaloft-v1.0.0-rc.3-linux-arm64-gnu.tar.gz"
      sha256 "94fad316325c72e98322af24f472c1f8819666ae2b0ccf0276fa4d59062eb60a"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.3/appaloft-v1.0.0-rc.3-linux-x64-gnu.tar.gz"
      sha256 "0b89cdc57284baa61a9550745a8d0285fbe9942fcb0746b1821a8a821ceb3eaa"
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
