cask "appaloft-desktop" do
  version "1.0.0-rc.5"

  on_arm do
    sha256 "cd9286dd816d025c081b58bc8ba3b30dac570f49d7176deb6204e34849bd45bf"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.5/appaloft-desktop-v1.0.0-rc.5-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "9fcbd13bf825faf06c8de42ae7fd95bcf598af3b616ad254207d0c3a08c76261"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.5/appaloft-desktop-v1.0.0-rc.5-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
