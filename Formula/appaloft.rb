class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.8.0/appaloft-v0.8.0-darwin-arm64.tar.gz"
      sha256 "500c15253c97d913024092df3a46a40d48ef27e5bd9e6f8373754867e4320801"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.8.0/appaloft-v0.8.0-darwin-x64.tar.gz"
      sha256 "d4d3ac6746ba2b25e9229646d304cc9e25296363cb082ab2cb17ec26b0e11370"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.8.0/appaloft-v0.8.0-linux-arm64-gnu.tar.gz"
      sha256 "16fef288766d2113d28665368fcf75b6ec2828d27f7603b55c081b49ed4b0b93"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.8.0/appaloft-v0.8.0-linux-x64-gnu.tar.gz"
      sha256 "575c4b0768c93621aaf596d848c1773cdb4772a5ff14ff3314e2e0908dde6821"
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
