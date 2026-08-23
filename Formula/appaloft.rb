class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.10.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.9/appaloft-v1.10.9-darwin-arm64.tar.gz"
      sha256 "7cbb2882db12c91ef8a4b1fa49413df6e8dd2381cadc36748210c2f62edbc784"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.9/appaloft-v1.10.9-darwin-x64.tar.gz"
      sha256 "d952910b254f17f09177f84491d71e14d156a14af8667e583ec681240d754e66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.9/appaloft-v1.10.9-linux-arm64-gnu.tar.gz"
      sha256 "543b607c3556540441c1c8f2b9e92d13acc8226d155284d8c98862bcce4ecaa0"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.9/appaloft-v1.10.9-linux-x64-gnu.tar.gz"
      sha256 "a27cd79ad0aab214d782f0dfb09d029e081021837f4df646a9a345b7cc7645d2"
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
