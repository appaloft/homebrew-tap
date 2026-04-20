cask "appaloft-desktop" do
  version "0.2.3"

  on_arm do
    sha256 "9206fd95ae8d435eb00828c19f4ec10e44064d57af72c28254d4ab6802b7bacf"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.3/appaloft-desktop-v0.2.3-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "e3d46b15bbd2c0965e84487160a6e84701e66a83a9a1bd4271c71d5c2e2cc553"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.3/appaloft-desktop-v0.2.3-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
