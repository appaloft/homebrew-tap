cask "appaloft-desktop" do
  version "0.8.0"

  on_arm do
    sha256 "b6d3d9e19770ff0b854817d4e0e0c78e3cc865f9ab3780e0d00b0a31f703aea2"
    url "https://github.com/appaloft/appaloft/releases/download/v0.8.0/appaloft-desktop-v0.8.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "a38701760aff6af9677d5045112101c191b1f4f50588589e42f1c83962767124"
    url "https://github.com/appaloft/appaloft/releases/download/v0.8.0/appaloft-desktop-v0.8.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
