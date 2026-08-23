cask "appaloft-desktop" do
  version "1.10.9"

  on_arm do
    sha256 "3567c96be801372278889981b78f6c3f8a2f5d5b427b676017e675a95e7dd998"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.9/appaloft-desktop-v1.10.9-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "5a83ced230e90062378d4c3c23165b2530c3125bbe9a4221cc47b65a494166d3"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.9/appaloft-desktop-v1.10.9-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
