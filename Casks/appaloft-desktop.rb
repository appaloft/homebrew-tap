cask "appaloft-desktop" do
  version "1.7.3"

  on_arm do
    sha256 "884510edc148c6b5ffdb816961f17f5dcb13121893253fa76e88c2b1a379bd52"
    url "https://github.com/appaloft/appaloft/releases/download/v1.7.3/appaloft-desktop-v1.7.3-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "beaa9613e9668051b32b00a47b21a86f31ce29014126f61cd18df5636886075c"
    url "https://github.com/appaloft/appaloft/releases/download/v1.7.3/appaloft-desktop-v1.7.3-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
