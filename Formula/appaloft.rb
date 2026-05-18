class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.0.0-rc.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.9/appaloft-v1.0.0-rc.9-darwin-arm64.tar.gz"
      sha256 "da14523702f01bd140c5198d2afe90d550118962e6dc7949a2250dfcf22eeba8"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.9/appaloft-v1.0.0-rc.9-darwin-x64.tar.gz"
      sha256 "b624661dcb8cb6bb1360de20625072e1d781dc8bcf89a1d494b9d3807f8b6c84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.9/appaloft-v1.0.0-rc.9-linux-arm64-gnu.tar.gz"
      sha256 "2bad16864af19eeb86e8d7c11fbd7baed073cc9a8dd3b4be8a581d097491dc98"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.9/appaloft-v1.0.0-rc.9-linux-x64-gnu.tar.gz"
      sha256 "74d4dea3028a8a3edf448554edbbe9d92051efcfa5fb7fd828141aef44c67fab"
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
