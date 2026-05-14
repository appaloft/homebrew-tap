cask "appaloft-desktop" do
  version "0.12.4"

  on_arm do
    sha256 "d5876d4b2d435983fa57e4ccd32ce1fed95a9f23353193a8a55545727f6b2808"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.4/appaloft-desktop-v0.12.4-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "f51e7f5c793c87a7f35a6af7bde4b4f900c847995decb8b64c2899fea5e15b7e"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.4/appaloft-desktop-v0.12.4-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
