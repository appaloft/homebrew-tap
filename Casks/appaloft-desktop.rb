cask "appaloft-desktop" do
  version "1.1.0"

  on_arm do
    sha256 "5bd242c420d48dcebc95cdc1d1a437481db377a03aa099bb221344a99a44eb1f"
    url "https://github.com/appaloft/appaloft/releases/download/v1.1.0/appaloft-desktop-v1.1.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "c93d7fc1ed749e6584116cea746d0e0f30534043ea869ebec5fe21946802d9d0"
    url "https://github.com/appaloft/appaloft/releases/download/v1.1.0/appaloft-desktop-v1.1.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
