cask "appaloft-desktop" do
  version "1.0.0"

  on_arm do
    sha256 "a515062d911cf98d7f8e705afc810b88a481a415de3f0bce7be1be510a4c7b87"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0/appaloft-desktop-v1.0.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "cb64889e8e01c00865e898d3914c97a996fef45e24852b28f72529ea9cb54c77"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0/appaloft-desktop-v1.0.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
