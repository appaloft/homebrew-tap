cask "appaloft-desktop" do
  version "0.12.0"

  on_arm do
    sha256 "4d03583ddad03bb689bd3a76da4b6359663a8478aca68044bcfc73fa1e0f157e"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.0/appaloft-desktop-v0.12.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "5415b94a503026cd564485661cef0f4ec83d855c6063d07d5e3965a147816dc2"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.0/appaloft-desktop-v0.12.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
