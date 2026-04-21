cask "appaloft-desktop" do
  version "0.2.9"

  on_arm do
    sha256 "cb2f11879dceaf2d324b0fbbe67f08e3778c769c9a74c46153ebe7500b6c03ec"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.9/appaloft-desktop-v0.2.9-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "0da55e167df7605b26ed37cbec4690c326a07b0a6408dc5e07186000641f0d55"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.9/appaloft-desktop-v0.2.9-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
