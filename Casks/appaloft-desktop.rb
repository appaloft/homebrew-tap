cask "appaloft-desktop" do
  version "0.9.10"

  on_arm do
    sha256 "9d87ef5e7996c4834c5031c55ffb7b292de6e1df87bce075b860f0294048e160"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.10/appaloft-desktop-v0.9.10-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "8b2546d10d3c1341b218d895fb84d941ade4cf6f13fa038aad0eb7c033ecd286"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.10/appaloft-desktop-v0.9.10-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
