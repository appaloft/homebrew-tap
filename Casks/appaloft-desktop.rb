cask "appaloft-desktop" do
  version "1.9.6"

  on_arm do
    sha256 "f184d56e2904c03477b0130bc5be656f44da925d7dd12770988720d5e5ae8128"
    url "https://github.com/appaloft/appaloft/releases/download/v1.9.6/appaloft-desktop-v1.9.6-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "a852ca851b9a74e363ffb760399555c167ba76e474d4aa855cd44193aa85933e"
    url "https://github.com/appaloft/appaloft/releases/download/v1.9.6/appaloft-desktop-v1.9.6-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
