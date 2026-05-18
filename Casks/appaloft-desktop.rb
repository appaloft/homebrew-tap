cask "appaloft-desktop" do
  version "1.0.0-rc.8"

  on_arm do
    sha256 "3acfaf47706a4c213b98bd5417092600a0ef51024c8cf1d7f6c3377b2f5443d8"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.8/appaloft-desktop-v1.0.0-rc.8-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "738f91d275d57c509e2740ccd49313b99f85c8a1508bc8e6869537959254b0e3"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.8/appaloft-desktop-v1.0.0-rc.8-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
