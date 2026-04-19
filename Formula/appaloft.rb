class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.0/appaloft-v0.2.0-darwin-arm64.tar.gz"
      sha256 "57c4fd4faf0e9f9feac25d8dacfd4df6f8fd60fbef4488fb6425b6d4322344be"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.0/appaloft-v0.2.0-darwin-x64.tar.gz"
      sha256 "19360149296df95081108c2c24aaa143ed171df9153feb73265b93e2935e9d2d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.0/appaloft-v0.2.0-linux-arm64-gnu.tar.gz"
      sha256 "de6b0b4e1868f66f6bd67d4a33571308eeca03b32ada456fc192d2f753a3744e"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.2.0/appaloft-v0.2.0-linux-x64-gnu.tar.gz"
      sha256 "38132222fefa6bf7f72a4f9476d861ef35fd34cb53a3e336e107b9c762be62da"
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
