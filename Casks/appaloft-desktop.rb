cask "appaloft-desktop" do
  version "0.2.12"

  on_arm do
    sha256 "f65472f42ca10c2ffd617d4b49808261cc9f01d41ec037107d9493e912e3cb27"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.12/appaloft-desktop-v0.2.12-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "9bf2af823abf34777bf97d0f2c3a48ed3e98666fbe6e69757b5fcb1122fb6f42"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.12/appaloft-desktop-v0.2.12-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
