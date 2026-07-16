cask "appaloft-desktop" do
  version "1.0.4"

  on_arm do
    sha256 "1fa5f346e9e4192446dadcac941bc3192fae8140f8ccc5f8745bb043a40d0be9"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.4/appaloft-desktop-v1.0.4-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "d5095baf241a7a769b97eeb65e03164e27599e153c13d38515e284d0eb475dc5"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.4/appaloft-desktop-v1.0.4-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
