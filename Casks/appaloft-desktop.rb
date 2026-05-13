cask "appaloft-desktop" do
  version "0.12.1"

  on_arm do
    sha256 "e4fb167f4b3231b9d0a4167718171c53c9ff113f31e70ca7ce720b4009fe69fb"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.1/appaloft-desktop-v0.12.1-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "b2b74c7cb6ed5a770d6c8f1d569c24af552f44695ee510746474334b068f73fb"
    url "https://github.com/appaloft/appaloft/releases/download/v0.12.1/appaloft-desktop-v0.12.1-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
