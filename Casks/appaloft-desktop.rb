cask "appaloft-desktop" do
  version "0.9.4"

  on_arm do
    sha256 "d7e9494026550861925096cc569b042928ca7950c21bbf30e74a57887dceb862"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.4/appaloft-desktop-v0.9.4-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "f2b030bc12ea8b03a80d80151200f3f2152f00e388350eb9155706888219384e"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.4/appaloft-desktop-v0.9.4-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
