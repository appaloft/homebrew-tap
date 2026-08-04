cask "appaloft-desktop" do
  version "1.7.4"

  on_arm do
    sha256 "754762016a555ff27cb1ecd8773a7644c7f882b2358ae27e98a9be65fbdc0c1d"
    url "https://github.com/appaloft/appaloft/releases/download/v1.7.4/appaloft-desktop-v1.7.4-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "cd941003fd6fa5d2968dabd5cb89ef229ce5093b2840916b449d0212ddc30ef5"
    url "https://github.com/appaloft/appaloft/releases/download/v1.7.4/appaloft-desktop-v1.7.4-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
