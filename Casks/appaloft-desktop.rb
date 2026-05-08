cask "appaloft-desktop" do
  version "0.9.3"

  on_arm do
    sha256 "1e6d3b9dde52959373e3e82292a69795bc61cbafa3f2e858440917fc1fd78c69"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.3/appaloft-desktop-v0.9.3-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "c0f7a03c40738525c2f9d5cae7781e7f1eed02bf6e60494b2cfdac18c1997fff"
    url "https://github.com/appaloft/appaloft/releases/download/v0.9.3/appaloft-desktop-v0.9.3-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
