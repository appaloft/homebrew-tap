cask "appaloft-desktop" do
  version "1.0.0-rc.3"

  on_arm do
    sha256 "eff4aebbbcb3c7a67b12614dae2619bd9e9465dea8faa17a068b27c86921a5fa"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.3/appaloft-desktop-v1.0.0-rc.3-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "d6939fa7a04e3c8ca9fb2d7179b4f10e229fe482c0f2d3fec76e2a3eaaad7c2b"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.3/appaloft-desktop-v1.0.0-rc.3-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
