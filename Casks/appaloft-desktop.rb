cask "appaloft-desktop" do
  version "1.0.0-rc.16"

  on_arm do
    sha256 "bf381ee783e75f9ec50ad81f77badbfd26bb46a24799b70f183234dba7129ed1"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.16/appaloft-desktop-v1.0.0-rc.16-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "7dc2deeea3a0fab095622774ecccc47964f5c621d7c6cfc0741ea0c931b3b2f9"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.16/appaloft-desktop-v1.0.0-rc.16-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
