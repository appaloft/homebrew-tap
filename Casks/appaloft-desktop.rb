cask "appaloft-desktop" do
  version "1.0.0-rc.10"

  on_arm do
    sha256 "1d900a0e1bc03a174c49eb1037ed10eae059d45fb1545e0e7d36a4237cf744b2"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.10/appaloft-desktop-v1.0.0-rc.10-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "762c68fc22530eaeffdeafc0b67f36fdfd53a7e06789663753a8242d27515314"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.10/appaloft-desktop-v1.0.0-rc.10-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
