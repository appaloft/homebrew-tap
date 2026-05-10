cask "appaloft-desktop" do
  version "0.9.9"

  on_arm do
    sha256 "c3a0d15d5fb687481fc955883e3403ddaa5bc6358acfb4a035d28540f4c757e6"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.9/appaloft-desktop-v0.9.9-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "acf76abcafa61e3edccab282e02c70b3b1a7e6e7ba8e06533dc47b04faa13196"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.9/appaloft-desktop-v0.9.9-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
