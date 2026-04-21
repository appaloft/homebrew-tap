cask "appaloft-desktop" do
  version "0.2.10"

  on_arm do
    sha256 "7efc157afe584d650f37acc759c4c9c45c20d7ac32ff1e28151d92a42db917d1"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.10/appaloft-desktop-v0.2.10-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "da2357e4cfb89265566549f2572368edd07234b05879256b593edb940e6a6299"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.10/appaloft-desktop-v0.2.10-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
