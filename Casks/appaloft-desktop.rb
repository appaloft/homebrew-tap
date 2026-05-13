cask "appaloft-desktop" do
  version "0.12.0"

  on_arm do
    sha256 "a2a7184d10ab599d6e0c962d5737e209d74f67edd1e83b2ccba5163678a253ff"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.0/appaloft-desktop-v0.12.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "f19df9992154202477098749bf8660b9bcf2e0b3e866101582472d0260e893c5"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.0/appaloft-desktop-v0.12.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
