class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.2.0/appaloft-v1.2.0-darwin-arm64.tar.gz"
      sha256 "b172fb493aa39407e4643bd2762898a9a50c644b7caf06d28cec81421e59bbec"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.2.0/appaloft-v1.2.0-darwin-x64.tar.gz"
      sha256 "054b479460616946ce72e9d84e7b0ec0ea02caa42909b5f399b57803baeba5e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.2.0/appaloft-v1.2.0-linux-arm64-gnu.tar.gz"
      sha256 "a4e67ff44df8829c87b21776e4f436546e0bf8a15d5f8e9eac70c7a979501b45"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.2.0/appaloft-v1.2.0-linux-x64-gnu.tar.gz"
      sha256 "1fc2eca4349012a2087266ba928cdb638c70bbfe88e99c1b1ad41581727db0e2"
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
