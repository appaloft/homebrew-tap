cask "appaloft-desktop" do
  version "1.10.4"

  on_arm do
    sha256 "435dd9886f1df49baf4cb9ba2e165bb6b9f5b438a5f185e3d587e3837282cb11"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.4/appaloft-desktop-v1.10.4-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "6535ac16a882d098b185f24ad99fd6c67a4121b9091599c1c03529837fd7e77a"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.4/appaloft-desktop-v1.10.4-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
