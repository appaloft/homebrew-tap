class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.8.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.11/appaloft-v1.8.11-darwin-arm64.tar.gz"
      sha256 "b785a2778de97b8eaec94503eb2c6255ea4d9ca9d2e7b9998c13edbdff278e4e"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.11/appaloft-v1.8.11-darwin-x64.tar.gz"
      sha256 "6b5771a24c963d75936f9f3c9a865c0425be959723af37a3a2c4ceb383089db3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.11/appaloft-v1.8.11-linux-arm64-gnu.tar.gz"
      sha256 "c48b6961ffc84dbf9285b70f152552954a40c620e69dba5fca87ba3482829591"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.8.11/appaloft-v1.8.11-linux-x64-gnu.tar.gz"
      sha256 "0f4bd090ed707bf0c03ae1225afb3736a102ef3c771ec2fe6c1755127a7e74e3"
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
