cask "appaloft-desktop" do
  version "1.0.0-rc.6"

  on_arm do
    sha256 "7819df18f11d7ab70c4a2a52910002f930a4045f467851e1ae838902da197be3"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.6/appaloft-desktop-v1.0.0-rc.6-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "ec42db804c814c2af8cd608ae57a1f52d3b1fe5d78de4977a0d1b5a8591ec47a"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.6/appaloft-desktop-v1.0.0-rc.6-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
