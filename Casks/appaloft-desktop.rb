cask "appaloft-desktop" do
  version "0.7.0"

  on_arm do
    sha256 "89a8128b29f595de4d98f1639c503aabca832c450986134cd67458d3bdfddfea"
    url "https://github.com/appaloft/appaloft/releases/download/v0.7.0/appaloft-desktop-v0.7.0-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "acbe094af0e0c599bfc7ccd1f1bfa031415225929f2c5c02ce9897c88879a3c3"
    url "https://github.com/appaloft/appaloft/releases/download/v0.7.0/appaloft-desktop-v0.7.0-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
