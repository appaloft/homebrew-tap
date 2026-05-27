cask "appaloft-desktop" do
  version "1.0.0-rc.15"

  on_arm do
    sha256 "e0140a8e56a99c2b7182cb603d587e58f2953f2ee0c4eccff7230495c96c153e"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.15/appaloft-desktop-v1.0.0-rc.15-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "6cb23f31ab574d671ab5daebd5359e2aa4d2815013c34e0521bd927e69cf95ce"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.15/appaloft-desktop-v1.0.0-rc.15-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
