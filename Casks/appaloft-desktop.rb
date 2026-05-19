cask "appaloft-desktop" do
  version "1.0.0-rc.12"

  on_arm do
    sha256 "f4cf056fe63d398c1f33d968d600e0b6498a3155505b8a55c51d5bfc4979688f"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.12/appaloft-desktop-v1.0.0-rc.12-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "51b196eedfb034f034a9ee9fa09e833fdf0596c91bb3ba7eb8d62e36a39d02fa"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.12/appaloft-desktop-v1.0.0-rc.12-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
