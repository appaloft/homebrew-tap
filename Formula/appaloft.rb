class Appaloft < Formula
  desc "Backend-first local-to-cloud deployment platform"
  homepage "https://github.com/appaloft/appaloft"
  license "MIT"
  version "0.9.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.8/appaloft-v0.9.8-darwin-arm64.tar.gz"
      sha256 "5b7759e31f9ac0a4ed675817c1c500540cf4194c5556c5e00ab1f4e87613ac10"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.8/appaloft-v0.9.8-darwin-x64.tar.gz"
      sha256 "f968af7bccda7d254b4e28f580039bdfd6468d85f5b7d924507f505ffb1d6209"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.8/appaloft-v0.9.8-linux-arm64-gnu.tar.gz"
      sha256 "c6c4f31e5771262db3d80712d601a8eaaa28014d4644bf613b748eed6e1a45fb"
    else
      url "https://github.com/appaloft/appaloft/releases/download/v0.9.8/appaloft-v0.9.8-linux-x64-gnu.tar.gz"
      sha256 "d02013c7a2c186dfae14bc04db049fa7f0cb50a212cc9247b631ca7590a12109"
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
