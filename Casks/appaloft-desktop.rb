cask "appaloft-desktop" do
  version "0.2.13"

  on_arm do
    sha256 "2e96dadea54a50e3595e0010223cb53de5e8c80b9d58f5a35a0f5ad128795dee"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.13/appaloft-desktop-v0.2.13-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "23ca9580be89445a8001fca8eb36f0f0f8c40832e8bcf0fda962854a87fc1d85"
    url "https://github.com/appaloft/appaloft/releases/download/v0.2.13/appaloft-desktop-v0.2.13-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
