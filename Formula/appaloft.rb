class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "1.10.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.10/appaloft-v1.10.10-darwin-arm64.tar.gz"
      sha256 "3baacf7b0180d8a5ae13baad9bf37830ed137c42c1511ac1798237b4cac29886"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.10/appaloft-v1.10.10-darwin-x64.tar.gz"
      sha256 "c8f0f28e17259ae633dbbab898ab630bc6a6bfdd228a7a1f8472d9eddb7e0537"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.10/appaloft-v1.10.10-linux-arm64-gnu.tar.gz"
      sha256 "b89a9d6de874321c323d156691a9d4ab683e55b3b8f2a1a886aad96bfab04a59"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v1.10.10/appaloft-v1.10.10-linux-x64-gnu.tar.gz"
      sha256 "7e4baa3a36e008768ed4942af15c34444e42e3880c9d5a1707a14a167ced0028"
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
