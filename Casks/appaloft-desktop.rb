cask "appaloft-desktop" do
  version "0.2.7"

  on_arm do
    sha256 "a3116de3fae8ea6ea7ab1918e2fb448a45678da54a78e103f79610d31d52365f"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.7/appaloft-desktop-v0.2.7-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "cc782530b43a7237f5cf03a1952c1bded4234c2ea681f2b8548d2f6ea7142b16"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.7/appaloft-desktop-v0.2.7-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
