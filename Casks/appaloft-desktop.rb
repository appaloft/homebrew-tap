cask "appaloft-desktop" do
  version "1.0.0-rc.4"

  on_arm do
    sha256 "f23b591356f6db34f8574ce92827da71741d50fc52449c195df450b0eb77cd85"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.4/appaloft-desktop-v1.0.0-rc.4-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "9606e769459743471326445962e2cbe52a362b1a172dcc023e4a97352e59d5e9"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.4/appaloft-desktop-v1.0.0-rc.4-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
