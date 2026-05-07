cask "appaloft-desktop" do
  version "0.9.0"

  on_arm do
    sha256 "8b4309f70aeeafce9a4b6d4c508910d51c82b0297d7855a4e9042d8cc41f92b4"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.0/appaloft-desktop-v0.9.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "3b215165e874cf9807a4782cec7908f18dcbb5bc32f25cc77f1df8faa7689cc7"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.0/appaloft-desktop-v0.9.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
