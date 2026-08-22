cask "appaloft-desktop" do
  version "1.10.3"

  on_arm do
    sha256 "16b20a9e808b624d492388fd51d9128aafe4399aae6e6285f230c1e0d5c59949"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.3/appaloft-desktop-v1.10.3-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "743f28f6c4a3acb7eefda77677f7dd642df06361daa0a8824273113f53300bec"
    url "https://github.com/appaloft/appaloft/releases/download/v1.10.3/appaloft-desktop-v1.10.3-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
