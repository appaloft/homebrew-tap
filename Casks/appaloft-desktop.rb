cask "appaloft-desktop" do
  version "1.9.5"

  on_arm do
    sha256 "486e849fd05c4327f9c66df69354e3bb57cee589b796e5343d4eb42db008a9fe"
    url "https://github.com/appaloft/appaloft/releases/download/v1.9.5/appaloft-desktop-v1.9.5-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "58bdf26dbe41f852d791be32b0564097dccd3255aa3b58f2b5c902855b426644"
    url "https://github.com/appaloft/appaloft/releases/download/v1.9.5/appaloft-desktop-v1.9.5-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
