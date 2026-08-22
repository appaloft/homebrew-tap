cask "appaloft-desktop" do
  version "1.10.2"

  on_arm do
    sha256 "d978e3348e4f1b7cb9e9a879762268bd544c8f1a83da483160ce754674289f03"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.2/appaloft-desktop-v1.10.2-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "6ac8e9619aada72cfde8f6836330a996294ebaf7be07b3849c2f5f9b1c526cf0"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.2/appaloft-desktop-v1.10.2-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
