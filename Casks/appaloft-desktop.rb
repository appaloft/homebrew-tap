cask "appaloft-desktop" do
  version "1.8.7"

  on_arm do
    sha256 "fa4dfdcf23657c88970b71edc30b5a05efa93e167ed5d7de4a130b7c1837cca7"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.7/appaloft-desktop-v1.8.7-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "2a4eeeefe778d687a2f555ca142c9dc70f857a5fc02dc4686b8ac75e4170776f"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.7/appaloft-desktop-v1.8.7-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
