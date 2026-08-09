cask "appaloft-desktop" do
  version "1.8.1"

  on_arm do
    sha256 "35742c207b53189bae0a4a79f8a5bb6c5153b26df5549080243a7ee2dc0eed2e"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.1/appaloft-desktop-v1.8.1-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "4dc05af999201df4e97cd7a1cd34313a4d683afc5c1364a9644da5e46f23fcef"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.1/appaloft-desktop-v1.8.1-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
