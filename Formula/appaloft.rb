class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.9.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.5/appaloft-v0.9.5-darwin-arm64.tar.gz"
      sha256 "986bedbc0e4dc37cc153386e47af9607fbc59278ee375b52c849773ba3ee4341"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.5/appaloft-v0.9.5-darwin-x64.tar.gz"
      sha256 "915c4481a3af941ffc26db56511dbde6c068e938ed151497efae214968204c80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.5/appaloft-v0.9.5-linux-arm64-gnu.tar.gz"
      sha256 "4be9fe727f5e6370d4aacf685894d73d225f55302489b04093cae9f19fe2a074"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.5/appaloft-v0.9.5-linux-x64-gnu.tar.gz"
      sha256 "3895e479cbaa69b79d68703fac46e92a68978ff454a5d300f2647b341891b003"
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
