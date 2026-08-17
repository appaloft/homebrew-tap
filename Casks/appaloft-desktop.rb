cask "appaloft-desktop" do
  version "1.8.13"

  on_arm do
    sha256 "ac525a034533b5f872252740a7b4ca680ce0fa65a76ae98bdd29fed6a34a9efe"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.13/appaloft-desktop-v1.8.13-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "0a4d0a8bd99dc10e82096754c70ce6456a98716d94b33e5462b12d86f7da59e9"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.13/appaloft-desktop-v1.8.13-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
