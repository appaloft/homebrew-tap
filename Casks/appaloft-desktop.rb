cask "appaloft-desktop" do
  version "0.2.6"

  on_arm do
    sha256 "def0c4a6aa5c4187aec73cecb8000af1dea46685b353b45da918dbfcdbb985a2"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.6/appaloft-desktop-v0.2.6-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "dc295344f8fd0951b46bb0ff5bcf224f31d5df3656787f210d539cee99bc7c59"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.6/appaloft-desktop-v0.2.6-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
