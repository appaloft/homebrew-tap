cask "appaloft-desktop" do
  version "0.10.0"

  on_arm do
    sha256 "60b74579c8ef3b24836b9a60e1b9f2e8f46ac507db0b893ae5e2013ecab47064"
    url "https://github.com/appaloft/appaloft/releases/download/v0.10.0/appaloft-desktop-v0.10.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "d68f72a2dc24f569e2c89567d2fbfd8e4b165bbff091e1ed972bc429cb0e6f45"
    url "https://github.com/appaloft/appaloft/releases/download/v0.10.0/appaloft-desktop-v0.10.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
