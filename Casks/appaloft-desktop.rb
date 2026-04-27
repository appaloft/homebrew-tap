cask "appaloft-desktop" do
  version "0.6.0"

  on_arm do
    sha256 "c32f27cc208b927982f6cbaa173c745ff86b5f47c5b8c6deded73b03aa0d6969"
    url "https://github.com/appaloft/appaloft/releases/download/v0.6.0/appaloft-desktop-v0.6.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "ad351654091f06a1886d5c16d35a2a038a3729f34382a936d9e9f99821349adc"
    url "https://github.com/appaloft/appaloft/releases/download/v0.6.0/appaloft-desktop-v0.6.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
