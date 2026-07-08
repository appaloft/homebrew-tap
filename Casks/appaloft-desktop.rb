cask "appaloft-desktop" do
  version "1.0.1"

  on_arm do
    sha256 "1ba3a3ca5ab5b8f23cac958d23ff641b8f1ac3d0382c754e3369f4060b558443"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.1/appaloft-desktop-v1.0.1-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "cf142402b4f22f7e1a9ebb591208229db2b9a6d844228d7a509f281f2c401e9f"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.1/appaloft-desktop-v1.0.1-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
