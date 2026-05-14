cask "appaloft-desktop" do
  version "0.12.2"

  on_arm do
    sha256 "0992ce5a482541c042d6428447dca1016fe454da4ec51565094020a5d8c9a9a7"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.2/appaloft-desktop-v0.12.2-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "ad05f7c8a8a371efd5ca981b9bf439b5c7827b9be69794f6254094eeb4b107dc"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.2/appaloft-desktop-v0.12.2-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
