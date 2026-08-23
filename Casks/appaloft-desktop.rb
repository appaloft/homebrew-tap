cask "appaloft-desktop" do
  version "1.10.6"

  on_arm do
    sha256 "e9d76d4cd4afeb6388f07c4f45b06e5d5e14e1856177529fa2039927e5d3ee73"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.6/appaloft-desktop-v1.10.6-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "d2574e34c6b31ef45e3c9b6cf139f26b41f343d3f7e4b4fadcae8fdce6526c82"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.6/appaloft-desktop-v1.10.6-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
