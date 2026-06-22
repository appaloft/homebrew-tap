cask "appaloft-desktop" do
  version "1.0.0-rc.18"

  on_arm do
    sha256 "78fcbf5fd5f5a3d2c632584ebee96ffec1663698e7de682cb3a09e0a82e2a11e"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.18/appaloft-desktop-v1.0.0-rc.18-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "fd21a3b6bb5a99524247ddb33eed9255bdd938839f6128b8248e5f0773e5e537"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.18/appaloft-desktop-v1.0.0-rc.18-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
