cask "appaloft-desktop" do
  version "1.4.0"

  on_arm do
    sha256 "b4bb33daaed9a5df3e813277602bafe793052902901a8ff79e65f37c62373699"
    url "https://github.com/appaloft/appaloft/releases/download/v1.4.0/appaloft-desktop-v1.4.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "875a973f350df90743c704fc41d4ff93786e9584e0f7938758c2e73553c9eff0"
    url "https://github.com/appaloft/appaloft/releases/download/v1.4.0/appaloft-desktop-v1.4.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
