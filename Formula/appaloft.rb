class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.9/appaloft-v0.2.9-darwin-arm64.tar.gz"
      sha256 "d3bc8c40bb8cfb7c09940563647dbf0faf4771fe54478a7389c403d426f0ca15"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.9/appaloft-v0.2.9-darwin-x64.tar.gz"
      sha256 "535ab9c453d0b03209301f2bba64fde2222567868e7129fe57fd732b6e82aa52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.9/appaloft-v0.2.9-linux-arm64-gnu.tar.gz"
      sha256 "e85b2929b62c3c1d0bc5f9fcb59324ea1eac26ee7210cb6626adb3b283fba165"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.9/appaloft-v0.2.9-linux-x64-gnu.tar.gz"
      sha256 "67ef26724d2fe33860920fbd3dd7174d26edbe29fab54bca6bfd294f0aba937b"
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
