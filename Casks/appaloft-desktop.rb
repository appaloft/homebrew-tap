cask "appaloft-desktop" do
  version "1.0.0-rc.2"

  on_arm do
    sha256 "510ae753a390892cab5b17a77dd48a88c4adf7a51cc16501594f1447f44c33bf"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.2/appaloft-desktop-v1.0.0-rc.2-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "af30b8953066b4055c9bbbdd9d87db240461fe2711711a621e6ae2a50e68a210"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.2/appaloft-desktop-v1.0.0-rc.2-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
