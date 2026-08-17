cask "appaloft-desktop" do
  version "1.8.11"

  on_arm do
    sha256 "e4ac8f2554945d845db2899e8b5d3e2e8095866e344a6299fa22f6b9e88894be"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.11/appaloft-desktop-v1.8.11-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "db7798cc860e9e10b1f687a56b0ddc087cc979dd516f981517b51ecec250e332"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.11/appaloft-desktop-v1.8.11-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
