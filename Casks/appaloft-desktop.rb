cask "appaloft-desktop" do
  version "0.2.11"

  on_arm do
    sha256 "682ed783f0e4deead9105cef01724e97b6c0800452c944ad1ed1f8f10b278763"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.11/appaloft-desktop-v0.2.11-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "455eb2890cae293af1888f7cc7d946d3b89886798c1554d8b06e603ad89bf5c9"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.11/appaloft-desktop-v0.2.11-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
