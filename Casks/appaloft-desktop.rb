cask "appaloft-desktop" do
  version "1.7.0"

  on_arm do
    sha256 "f29e2032e03338b720d5419eeebdf8e4db29f8983f110d6f30b11ce3ecb7d900"
    url "https://github.com/appaloft/appaloft/releases/download/v1.7.0/appaloft-desktop-v1.7.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "9c15640e14666b484c8f3be98e7568645759faa43d5f60a2faf893b23783279e"
    url "https://github.com/appaloft/appaloft/releases/download/v1.7.0/appaloft-desktop-v1.7.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
