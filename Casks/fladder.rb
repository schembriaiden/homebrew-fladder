cask "fladder" do
  version "0.11.0"
  sha256 "7e5ef72dd028d04d6a73213640242ccc06ecb5c32358bae9eafd4b60afa73c29"

  url "https://github.com/DonutWare/Fladder/releases/download/v#{version}/Fladder-macOS-#{version}.dmg"
  name "Fladder"
  desc "Simple Jellyfin frontend built with Flutter"
  homepage "https://github.com/DonutWare/Fladder"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Fladder.app"

  zap trash: [
    "~/Library/Application Scripts/nl.jknaapen.fladder",
    "~/Library/Containers/nl.jknaapen.fladder",
  ]
end
