cask "appaloft-desktop" do
  version "1.9.4"

  on_arm do
    sha256 "b9f73f54eee5739fc1da591cbc0b41c715d6c16167792644719b0fe565b3889c"
    url "https://github.com/appaloft/appaloft/releases/download/v1.9.4/appaloft-desktop-v1.9.4-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "199012b95394f429a4843437a24fff501a5c3ca5d4babdfe869c07ee1188a0f4"
    url "https://github.com/appaloft/appaloft/releases/download/v1.9.4/appaloft-desktop-v1.9.4-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
