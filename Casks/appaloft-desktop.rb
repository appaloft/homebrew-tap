cask "appaloft-desktop" do
  version "1.8.5"

  on_arm do
    sha256 "c3d50fdef3c0f7c585d54cb3c67c2a86cf14fbf956cd9073f0ce3f481d49daf1"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.5/appaloft-desktop-v1.8.5-darwin-arm64.dmg"
  end

  on_intel do
    sha256 "62d3c082fae94f2e899d40ea77fc2313858838bda1094b9364f83ad045c23982"
    url "https://github.com/appaloft/appaloft/releases/download/v1.8.5/appaloft-desktop-v1.8.5-darwin-x64.dmg"
  end

  name "Appaloft"
  desc "Local desktop shell for Appaloft"
  homepage "https://github.com/appaloft/appaloft"

  app "Appaloft.app"
end
