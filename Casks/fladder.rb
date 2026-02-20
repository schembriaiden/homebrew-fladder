cask "fladder" do
  version "0.10.0"
  sha256 "7c1124057e551d9a3f3e4e6ef7361f815f568061dbba8e39bd335186fd515cda"

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
