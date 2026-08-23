cask "appaloft-desktop" do
  version "1.10.7"

  on_arm do
    sha256 "5100206661935a9f28a2516778569888b4a77732cf8e0534f06dc363f7fa9a7e"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.7/appaloft-desktop-v1.10.7-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "c5764da61692717fa3f0e49f2886ac9972e40cefa424848dec534cdcae736401"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.7/appaloft-desktop-v1.10.7-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
