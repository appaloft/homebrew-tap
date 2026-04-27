cask "appaloft-desktop" do
  version "0.6.0"

  on_arm do
    sha256 "4858190245fb7cd6b637b27bc0c854681fe763453625a77777e477a9a07624d1"
    url "https://github.com/appaloft/appaloft/releases/download/v0.6.0/appaloft-desktop-v0.6.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "85fe4ca39d3f150993b855a22b4f1a4584ff3d4f5605d9e41484adb30ec7f666"
    url "https://github.com/appaloft/appaloft/releases/download/v0.6.0/appaloft-desktop-v0.6.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
