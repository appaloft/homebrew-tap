cask "appaloft-desktop" do
  version "0.4.0"

  on_arm do
    sha256 "c24b008f189711343a148185a3f79615521f05c14184768efeba88cb9a30a69e"
    url "https://github.com/appaloft/appaloft/releases/download/v0.4.0/appaloft-desktop-v0.4.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "bbceee2753ee82bbebd2b6567aef14e1a33729486872ba4450aea5f782e46754"
    url "https://github.com/appaloft/appaloft/releases/download/v0.4.0/appaloft-desktop-v0.4.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
