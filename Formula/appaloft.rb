class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.10.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.8/appaloft-v1.10.8-darwin-arm64.tar.gz"
      sha256 "04991bcea12eefd66de06e26bbd07229aaef064400a8b6074074bccc27e4debd"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.8/appaloft-v1.10.8-darwin-x64.tar.gz"
      sha256 "2a6f9548a5dd71b486756d908a11bc0e3d80be7d406b70ce5bc0254491a554e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.8/appaloft-v1.10.8-linux-arm64-gnu.tar.gz"
      sha256 "357212ac8e703569925a1d10e0dd45b8955be6dba8b81014d79c2f02a35cc8ad"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.8/appaloft-v1.10.8-linux-x64-gnu.tar.gz"
      sha256 "a1427926d7803bc117470daa17740c817eaa327e90fb44f3a2c967f1c7a4befb"
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
