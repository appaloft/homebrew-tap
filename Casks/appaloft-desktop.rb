cask "appaloft-desktop" do
  version "1.0.0-rc.7"

  on_arm do
    sha256 "6991179f39094b473e06fca9cbea0a150cb1c29737af08c38041ef7a758c0942"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.7/appaloft-desktop-v1.0.0-rc.7-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "67b05312df511809879fd4c8a8149c138d0986561c45aecd2d91f1ca0b6191db"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.7/appaloft-desktop-v1.0.0-rc.7-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
