cask "appaloft-desktop" do
  version "1.10.10"

  on_arm do
    sha256 "e01b5d9b8cfea69353a8d1a1f6e1c461691d092a1da2c9cd32f6f828715c2a8a"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.10/appaloft-desktop-v1.10.10-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "c228e13a7309e4f1c2df25eae264101767f105eb18af6a930707e05a165044b0"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.10/appaloft-desktop-v1.10.10-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
