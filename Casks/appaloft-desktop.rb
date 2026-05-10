cask "appaloft-desktop" do
  version "0.9.8"

  on_arm do
    sha256 "f064e1fa524f777f5c53ac5852ff6146df45fafdba99003fb38daa1da854dfae"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.8/appaloft-desktop-v0.9.8-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "946854058d82aff9f5b0d761d4fbc7df2e494a86b0ba4fdf40399c3eda2c8b88"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.8/appaloft-desktop-v0.9.8-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
