cask "appaloft-desktop" do
  version "0.1.0"

  on_arm do
    sha256 "25d11fe1f1763f8c42127ddcb755fa2ba6f04ae5cedaafb093d8dc5e5735e1f1"
    url "https://github.com/appaloft/appaloft/releases/download/v0.1.0/appaloft-desktop-v0.1.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "005c2aeeac4f3117ea37b62b5ea862d4e4fc44c4772bcca1210ad61c7a7eaa7c"
    url "https://github.com/appaloft/appaloft/releases/download/v0.1.0/appaloft-desktop-v0.1.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
