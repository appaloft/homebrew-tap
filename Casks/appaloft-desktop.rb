cask "appaloft-desktop" do
  version "1.9.2"

  on_arm do
    sha256 "6ec08a0ad584e9f2755419d931271f270a97d44580382304ee1913b5d5e2527e"
    url "https://github.com/appaloft/appaloft/releases/download/v1.9.2/appaloft-desktop-v1.9.2-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "b1ad89363aa9033f3cbfb60b0a84384135896318922601a2ce59384125502c3d"
    url "https://github.com/appaloft/appaloft/releases/download/v1.9.2/appaloft-desktop-v1.9.2-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
