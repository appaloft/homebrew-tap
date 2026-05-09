cask "appaloft-desktop" do
  version "0.9.5"

  on_arm do
    sha256 "914348c45eb366dc5ccb408a62c4648c50a0d659e8666429f0121dee4e816d79"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.5/appaloft-desktop-v0.9.5-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "ed2ba836e2999023b02d654fd6ac58c0bddc877e9f5d11c5604e093e11770fd2"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.5/appaloft-desktop-v0.9.5-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
