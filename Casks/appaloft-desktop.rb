cask "appaloft-desktop" do
  version "1.9.3"

  on_arm do
    sha256 "24aab149241c240a6e1646fb15f17159d82f44573d554b951246cffd20119095"
    url "https://github.com/appaloft/appaloft/releases/download/v1.9.3/appaloft-desktop-v1.9.3-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "0fc56d2b1dbd29cd0871edcd735bd3c34c42363c6a28d702fb170bd0de20fc03"
    url "https://github.com/appaloft/appaloft/releases/download/v1.9.3/appaloft-desktop-v1.9.3-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
