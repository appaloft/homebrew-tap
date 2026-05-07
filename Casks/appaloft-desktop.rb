cask "appaloft-desktop" do
  version "0.9.2"

  on_arm do
    sha256 "b12ddcfcc35ae194d616d4ed2bdb2130655facd3596c68415960749bf4de6ea8"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.2/appaloft-desktop-v0.9.2-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "be46797f636b2b8a6f8451408fb495bfa74ad41e4238c43502cb404bbcab78a7"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.2/appaloft-desktop-v0.9.2-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
