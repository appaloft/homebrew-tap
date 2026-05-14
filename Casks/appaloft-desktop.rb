cask "appaloft-desktop" do
  version "0.12.3"

  on_arm do
    sha256 "45ffec4941d69f0907c92454f9dc5a2d86177a0dd3c9af3123be47c7e7158138"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.3/appaloft-desktop-v0.12.3-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "c3837feb7a79aca9f072e85b9f47bfef46b7be654780493d8d0349dad4f44fb4"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.3/appaloft-desktop-v0.12.3-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
