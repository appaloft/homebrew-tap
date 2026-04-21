cask "appaloft-desktop" do
  version "0.2.5"

  on_arm do
    sha256 "f17ba110f51459e279a622be3b18e6e1c6a1fb201e15f37d1b4543e183418601"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.5/appaloft-desktop-v0.2.5-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "2810e890a060e839cd5a440a1a3e576bdc53a32e739baa19643e0c619810caa7"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.5/appaloft-desktop-v0.2.5-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
