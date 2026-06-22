cask "appaloft-desktop" do
  version "1.0.0-rc.17"

  on_arm do
    sha256 "c70b81311efc917f33d4e2cdac22ee16d85fe23693dd0ea24e67334c20361642"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.17/appaloft-desktop-v1.0.0-rc.17-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "a2cd8eeadad68ceb49927f3cbb2b740ca959c869f7de765c477d18da4d3fd6f7"
    url "https://github.com/appaloft/appaloft/releases/download/v1.0.0-rc.17/appaloft-desktop-v1.0.0-rc.17-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
