class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.1/appaloft-v1.0.1-darwin-arm64.tar.gz"
      sha256 "43cb0bbafa7692fc7440a225c029e26dd7e97e50b8d82384c404f5f9ff093f2d"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.1/appaloft-v1.0.1-darwin-x64.tar.gz"
      sha256 "40a5cb92614d297114635adb1d313462b546c19a75449f3a3481aa18c61b4012"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.1/appaloft-v1.0.1-linux-arm64-gnu.tar.gz"
      sha256 "c15368f61e45106cff1d6ace19808012a91974773d73a36fe1ac179edba727f7"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.1/appaloft-v1.0.1-linux-x64-gnu.tar.gz"
      sha256 "2dc622a2f9efd2dc7bc8d58eb0841b733f40c38ecf2b62e8ea0b92c171a32908"
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
