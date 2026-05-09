cask "appaloft-desktop" do
  version "0.9.6"

  on_arm do
    sha256 "155874e058d169855a4baa25cf45857fff5f86dcd7841d453908794108f097c0"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.6/appaloft-desktop-v0.9.6-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "8820a78e7878d7ad4e3e9989422cce57128e65608ace322d0ab5daca6fa4ccff"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.6/appaloft-desktop-v0.9.6-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
