cask "appaloft-desktop" do
  version "1.8.4"

  on_arm do
    sha256 "83b0e3c6eceec6d50a17a8abd9bd3240770f17ec7d61c5e04e2c921c08b483d3"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.4/appaloft-desktop-v1.8.4-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "5065e448ffa469188c97b5f20deb96235a0ce3586cdf3891ee7420df36c9490b"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.4/appaloft-desktop-v1.8.4-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
