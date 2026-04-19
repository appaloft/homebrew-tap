cask "appaloft-desktop" do
  version "0.2.0"

  on_arm do
    sha256 "8ef8a82dd89eaf9fd2cf396e48d0605db46f2ef968f973ee8e7bfc6d4c7e4979"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.0/appaloft-desktop-v0.2.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "7f0d937bd7e0a8cde1a6cc814fb290ff3661ccc3ede933a80153c32c49296adf"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.0/appaloft-desktop-v0.2.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
