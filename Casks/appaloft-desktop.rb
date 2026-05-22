cask "appaloft-desktop" do
  version "1.0.0-rc.13"

  on_arm do
    sha256 "9b7307ab5289ec44ae2e213fca8b3bbb597c7d7ec84b58b09f49a8e3cd6554ec"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.13/appaloft-desktop-v1.0.0-rc.13-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "c50277d56c3fe6262d967df319b354dbcfe7bcb8a76cf99e2163094b1965a35a"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.13/appaloft-desktop-v1.0.0-rc.13-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
