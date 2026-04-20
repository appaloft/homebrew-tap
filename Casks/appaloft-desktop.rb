cask "appaloft-desktop" do
  version "0.2.2"

  on_arm do
    sha256 "8e7a8c8fbbc8213bd49c3a31db98948b05bd954f6252d67d65513ef7eb41b097"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.2/appaloft-desktop-v0.2.2-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "be51f8c87f7ab0e2fd7ef284d755454c08174b03630c33f1a5423ad683b55dc1"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.2/appaloft-desktop-v0.2.2-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
