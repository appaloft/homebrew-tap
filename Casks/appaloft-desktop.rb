cask "appaloft-desktop" do
  version "1.0.0-rc.9"

  on_arm do
    sha256 "acb906dd815061db5da83258f8494baac368183b1b3f1b7b4a5b6e295bb4b0dc"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.9/appaloft-desktop-v1.0.0-rc.9-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "b3541a5d0e2f0cf434f8f4e7951be2ca934294cace164af2e2db79f7bbbfe96c"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.9/appaloft-desktop-v1.0.0-rc.9-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
