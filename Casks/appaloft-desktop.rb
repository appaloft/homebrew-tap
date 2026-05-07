cask "appaloft-desktop" do
  version "0.9.1"

  on_arm do
    sha256 "f7041a6fc83d66e4bec9c9625afd6525b335f9e2101f4709928d4534d33a365f"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.1/appaloft-desktop-v0.9.1-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "d28c8d2bf3bb337171594717bc215197f491b8869da77eb913ac85a9f62e139c"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.1/appaloft-desktop-v0.9.1-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
