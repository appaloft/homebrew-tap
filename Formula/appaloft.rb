class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.2/appaloft-v1.7.2-darwin-arm64.tar.gz"
      sha256 "dc29b5df179dca29b82853a9a0337dc080bd0eb656161ec8d05956261283d3bb"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.2/appaloft-v1.7.2-darwin-x64.tar.gz"
      sha256 "4e23309e8c4cbdc32076f65a794ee27434b50747b50191347103a4865ef75f49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.2/appaloft-v1.7.2-linux-arm64-gnu.tar.gz"
      sha256 "ecd9ffb71d4bea348be7f88a9117946eb3a3705902521ed49501e582ec4f074b"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.7.2/appaloft-v1.7.2-linux-x64-gnu.tar.gz"
      sha256 "935912febdf4b8ba0e81083936d567770b9390d783b948c1fe045b8cd7404108"
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
