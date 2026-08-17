cask "appaloft-desktop" do
  version "1.8.8"

  on_arm do
    sha256 "d446a89c3852b707db9cba48c3405d13be26063cfd62b8be4b3b09436e30998c"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.8/appaloft-desktop-v1.8.8-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "49c595df0c9d133f6bcbb51794f3464603aa7771755eb047a8e8a08ad702ad6c"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.8/appaloft-desktop-v1.8.8-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
