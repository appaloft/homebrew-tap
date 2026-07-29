cask "appaloft-desktop" do
  version "1.6.4"

  on_arm do
    sha256 "f33aedf1d3bfa4839c80e69d5a2d0817b6e007c65ee3e4a19e0ca6200091a2de"
    url "https://github.com/appaloft/appaloft/releases/download/v1.6.4/appaloft-desktop-v1.6.4-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "4192bd0d04b0cbb06632cc1565c772f544cbb1c2a1ff34d3d35c7600b031f8c2"
    url "https://github.com/appaloft/appaloft/releases/download/v1.6.4/appaloft-desktop-v1.6.4-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
