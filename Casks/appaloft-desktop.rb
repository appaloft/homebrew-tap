cask "appaloft-desktop" do
  version "0.2.4"

  on_arm do
    sha256 "f2ec34e48b58a3d1e0d3cbcaded37d8acc4b5bc8dc1ad42e80ceaa2e146d5352"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.4/appaloft-desktop-v0.2.4-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "4f876fbfd25371e41ecab91fe44037808fafd1abbb36af101118f809e2325a59"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.4/appaloft-desktop-v0.2.4-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
