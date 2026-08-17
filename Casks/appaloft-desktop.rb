cask "appaloft-desktop" do
  version "1.8.9"

  on_arm do
    sha256 "5ed32dc91d68e8b0f12e57bc97758dbc3512e9ee88474a87bcff5d2cf9121ecb"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.9/appaloft-desktop-v1.8.9-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "111c9db356d2f51bc65d42c4b08ae7e80f0d154477821961c7432a01fa2e461c"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.9/appaloft-desktop-v1.8.9-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
