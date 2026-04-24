cask "appaloft-desktop" do
  version "0.5.0"

  on_arm do
    sha256 "0c70a28a42ea7cf9a3ba6bdac04747414961bb80acf6e97bfb611c2f9a55518a"
    url "https://github.com/appaloft/appaloft/releases/download/v0.5.0/appaloft-desktop-v0.5.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "1d9e39da175612c0afe4a77facada8ac43c564b9e141cf8fff8e027da7c063f2"
    url "https://github.com/appaloft/appaloft/releases/download/v0.5.0/appaloft-desktop-v0.5.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
