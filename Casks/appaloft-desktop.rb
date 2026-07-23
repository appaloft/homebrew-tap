cask "appaloft-desktop" do
  version "1.3.1"

  on_arm do
    sha256 "92354536ac1c1780b3962930fcf3f0425d4e5fb2eadc8b7cf251ae3df228e1b1"
    url "https://github.com/appaloft/appaloft/releases/download/v1.3.1/appaloft-desktop-v1.3.1-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "1143bb9f002b5b235e497ed20e7a8db3b94d97aa41fbefac795f07c60850c1e9"
    url "https://github.com/appaloft/appaloft/releases/download/v1.3.1/appaloft-desktop-v1.3.1-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
