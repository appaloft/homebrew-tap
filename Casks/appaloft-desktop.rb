cask "appaloft-desktop" do
  version "1.0.0-rc.14"

  on_arm do
    sha256 "a368db7596a747e13ab2784355e82b3936a08cdb0c7ebdc232c9a1a69b19bb98"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.14/appaloft-desktop-v1.0.0-rc.14-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "df13a2fa617b40e81d83f523d9250b290bb89d004bd312f04e6762fdf60d08c9"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.14/appaloft-desktop-v1.0.0-rc.14-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
