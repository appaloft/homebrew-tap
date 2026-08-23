cask "appaloft-desktop" do
  version "1.10.8"

  on_arm do
    sha256 "9fd071c74015daea7cbb1469e772031e69de304c15a333e8dda3fd01d5c21bd5"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.8/appaloft-desktop-v1.10.8-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "2cd38cfbf385aba4aed0a841fa43ce47fd6f68561e98c485d145d9ec85f0e0fb"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.8/appaloft-desktop-v1.10.8-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
