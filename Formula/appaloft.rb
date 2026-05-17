class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.4/appaloft-v1.0.0-rc.4-darwin-arm64.tar.gz"
      sha256 "6ee5ae97f1445c7075c30c854177fa7b98178af60074f3f731acc88105a07154"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.4/appaloft-v1.0.0-rc.4-darwin-x64.tar.gz"
      sha256 "a9252d8d74285ad6b73df74260554cf5f8fd8ecd1c4a74f4e8a65a2b8a334226"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.4/appaloft-v1.0.0-rc.4-linux-arm64-gnu.tar.gz"
      sha256 "974152a12dbeb7717b5f7e1addea54de70903d63d5c3d176d810911fc9878626"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.4/appaloft-v1.0.0-rc.4-linux-x64-gnu.tar.gz"
      sha256 "9a2ac5f81065e4b2a5f2f623b15f8f276444558042255ca9b6d776d376bd4029"
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
