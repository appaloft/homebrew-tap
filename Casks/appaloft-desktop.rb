cask "appaloft-desktop" do
  version "0.9.7"

  on_arm do
    sha256 "868003bbf4d4722596888fc5bc98a291e7bc5b6db189a22c6d711b4bb5654be8"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.7/appaloft-desktop-v0.9.7-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "b6efec18938b07512f1d9771b3508029fd0d888f0849ace57a518265bab2e90e"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.7/appaloft-desktop-v0.9.7-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
