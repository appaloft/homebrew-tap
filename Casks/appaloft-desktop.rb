cask "appaloft-desktop" do
  version "1.8.14"

  on_arm do
    sha256 "ea779afc35cc4c426ae8dfd6a1873bc1aa71abdedcba57e6eeb74a19fc8522a3"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.14/appaloft-desktop-v1.8.14-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "2b730ee39e21c2d1e21f0cc81bfa0d63f755ca2ae16834616eb93c8933822052"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.14/appaloft-desktop-v1.8.14-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
