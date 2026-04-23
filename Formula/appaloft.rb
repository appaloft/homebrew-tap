class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.13/appaloft-v0.2.13-darwin-arm64.tar.gz"
      sha256 "3925cb41231f102fac5892252f466ebef3c6f8a068412f5cfaaaac399d865f5a"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.13/appaloft-v0.2.13-darwin-x64.tar.gz"
      sha256 "df31cca675f884e4222f52532636b07bf75d28ab365dae78ef5abeb02dd2cf27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.13/appaloft-v0.2.13-linux-arm64-gnu.tar.gz"
      sha256 "f055143dd2d5d2c87dbf3b81ea3afa47a7e7f5d52848db896346481c40139ee7"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.13/appaloft-v0.2.13-linux-x64-gnu.tar.gz"
      sha256 "f7d22484150d6e5a1600df0d9cf843205d054ffebd0983ae6059a04e7c0ba498"
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
