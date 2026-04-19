cask "appaloft-desktop" do
  version "0.2.1"

  on_arm do
    sha256 "783e17eb470943ccfebaa1a9da1586490a6284fba6114a88055826f26f5cbabb"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.1/appaloft-desktop-v0.2.1-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "11fec9ca99e19faf8a00f0e2df7d30c23dd4e420380ee9646cfc19f7b305197c"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.1/appaloft-desktop-v0.2.1-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
