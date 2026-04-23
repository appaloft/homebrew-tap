cask "appaloft-desktop" do
  version "0.3.0"

  on_arm do
    sha256 "aa49c4d53d64e6237674314aa9e9a699284e53e43cfee3751e468b3dbe111bbf"
    url "https://github.com/appaloft/appaloft/releases/download/v0.3.0/appaloft-desktop-v0.3.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "d0133d27cb107a234c819c9208302f77a0d3314f1c608c7c96cde223d002224f"
    url "https://github.com/appaloft/appaloft/releases/download/v0.3.0/appaloft-desktop-v0.3.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
