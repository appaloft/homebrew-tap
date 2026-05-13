cask "appaloft-desktop" do
  version "0.12.1"

  on_arm do
    sha256 "d9b27012fe2784e49357771e57b27874dc35b6c18a889432c4e063530efe06ec"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.1/appaloft-desktop-v0.12.1-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "35ab4e78cc8bf0df6f1620dfa0ac21dd5534cdce40e2baad8b76a8d3f1a3ae39"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.1/appaloft-desktop-v0.12.1-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
