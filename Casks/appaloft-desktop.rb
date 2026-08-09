cask "appaloft-desktop" do
  version "1.8.0"

  on_arm do
    sha256 "bce117828d097a3eecd44e2a937a8a37347e89f060c1f8b8b6d7aca735a7ecdc"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.0/appaloft-desktop-v1.8.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "252b5bd53cdb11e9313b5a32b29e9a6c6ad4a90904d9d1099dee0a833dcbdfac"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.0/appaloft-desktop-v1.8.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
