cask "appaloft-desktop" do
  version "1.3.2"

  on_arm do
    sha256 "42522ee20d683523108f1a6f79af8f55ce0cb91856183f6c915ebd0d7c33366b"
    url "https://github.com/appaloft/appaloft/releases/download/v1.3.2/appaloft-desktop-v1.3.2-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "8f6dad82ba709750d34a3ceec9f98fdfc5b74077558fcbce96f4b9fba309639c"
    url "https://github.com/appaloft/appaloft/releases/download/v1.3.2/appaloft-desktop-v1.3.2-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
