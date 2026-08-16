cask "appaloft-desktop" do
  version "1.8.6"

  on_arm do
    sha256 "44fb23f9bfd449983618eea89ae0c6a9950979e363a9d929faab5da67b5feb22"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.6/appaloft-desktop-v1.8.6-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "710fbd6ae28511b04e8acba09b759766d370e110b8d7a2c8cdb73a89850f019d"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.6/appaloft-desktop-v1.8.6-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
