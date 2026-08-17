cask "appaloft-desktop" do
  version "1.8.12"

  on_arm do
    sha256 "92d55a3c09aaf032d01639c3691a703fc8abced4137e497f52238fa89d826da9"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.12/appaloft-desktop-v1.8.12-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "758ac9c57bf8f34236357388ed08cd82fda21f6577212fedc149d61972e8ddab"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.12/appaloft-desktop-v1.8.12-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
