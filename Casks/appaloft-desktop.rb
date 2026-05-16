cask "appaloft-desktop" do
  version "1.0.0-rc"

  on_arm do
    sha256 "df45b137b9cec37dc029fb95f608e0c5027565640530dd8b847d3d4ca1ec7c14"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc/appaloft-desktop-v1.0.0-rc-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "33dbf50b18f7ebd7faccdadd5e70b63de968c6257571f0a93596b51f3b38b7e9"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc/appaloft-desktop-v1.0.0-rc-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
