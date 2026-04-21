class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.4/appaloft-v0.2.4-darwin-arm64.tar.gz"
      sha256 "188af5285a931643d7b27aa1fa9018c8b8b652cde043a58dd247f5a2973e6e84"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.4/appaloft-v0.2.4-darwin-x64.tar.gz"
      sha256 "fa241739c7fa63339226136c9b06779bff2fe57230cb6f45a52d02924bdafa66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.4/appaloft-v0.2.4-linux-arm64-gnu.tar.gz"
      sha256 "86ac435d9c3d4fb28994e90514856def7d64edf66e53450a87b4b88b8fe5d859"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.4/appaloft-v0.2.4-linux-x64-gnu.tar.gz"
      sha256 "6a269475162e44fae8c09c899089b25187903843ea627369fe9a40f368882266"
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
