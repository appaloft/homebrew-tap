cask "appaloft-desktop" do
  version "1.2.0"

  on_arm do
    sha256 "93f2f133a928da049f6ab3950935395d1a4595b41cf6afe8333ea0bd8a72fb58"
    url "https://github.com/appaloft/appaloft/releases/download/v1.2.0/appaloft-desktop-v1.2.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "91636698f9390ce289b5c5dd8cb740802f0d9ad2b9954ca030e2825856897f53"
    url "https://github.com/appaloft/appaloft/releases/download/v1.2.0/appaloft-desktop-v1.2.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
