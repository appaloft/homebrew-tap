cask "appaloft-desktop" do
  version "1.9.1"

  on_arm do
    sha256 "96579b4dc2a946c8f8579c3a534bbdac1667ae47d2e315af8e083d6caff3317f"
    url "https://github.com/appaloft/appaloft/releases/download/v1.9.1/appaloft-desktop-v1.9.1-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "4eb133866e00cf2f1cb151668bef40b40912ed2be52a1614ea2f0e881e6d2831"
    url "https://github.com/appaloft/appaloft/releases/download/v1.9.1/appaloft-desktop-v1.9.1-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
