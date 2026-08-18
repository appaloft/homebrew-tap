cask "appaloft-desktop" do
  version "1.8.16"

  on_arm do
    sha256 "e174c656c0eeb519ca090a373e5462823f5a9c30dbee609dc03e452ca1bbdd09"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.16/appaloft-desktop-v1.8.16-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "da4b4383ebcb7eac4bc34fa129f0271e55554cfeade3aecbf5d2ef1ed3b11b88"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.16/appaloft-desktop-v1.8.16-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
