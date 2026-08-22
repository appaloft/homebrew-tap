cask "appaloft-desktop" do
  version "1.10.5"

  on_arm do
    sha256 "863b17c0b0fdedd4311f87c25b01e2eac45aacba026ba42298a895b615010f9e"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.5/appaloft-desktop-v1.10.5-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "7e657c521669c69fd872090d062acdf17e4be70ea75910a5fcd20e36b1c1d6c9"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.5/appaloft-desktop-v1.10.5-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
