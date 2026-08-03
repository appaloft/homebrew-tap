cask "appaloft-desktop" do
  version "1.7.2"

  on_arm do
    sha256 "4e9ce22b0ff827b10d8ab1d1f792aa974f297b61931755d106ac579953504d63"
    url "https://github.com/appaloft/appaloft/releases/download/v1.7.2/appaloft-desktop-v1.7.2-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "4d9cbea970a41365b5827b25b976c5822033bdc446360e78a37fb9a32372400b"
    url "https://github.com/appaloft/appaloft/releases/download/v1.7.2/appaloft-desktop-v1.7.2-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
