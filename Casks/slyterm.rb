cask "slyterm" do
  version "1.3.0"
  sha256 "19ee46c37f73cbff95fd497845be227f47a94844dc6205d39c8c76646b1c2470"

  url "https://github.com/MushkyQT/SlyTerm/releases/download/v#{version}/SlyTerm-#{version}.dmg"
  name "SlyTerm"
  desc "Terminal that floats over games, with click-through and coding agent status"
  homepage "https://github.com/MushkyQT/SlyTerm"

  livecheck do
    url "https://github.com/MushkyQT/SlyTerm/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "SlyTerm.app"

  uninstall quit: "com.charlesmelki.slyterm"

  zap trash: [
    "~/Library/Application Support/SlyTerm",
    "~/Library/Caches/com.charlesmelki.slyterm",
    "~/Library/HTTPStorages/com.charlesmelki.slyterm",
    "~/Library/HTTPStorages/com.charlesmelki.slyterm.binarycookies",
    "~/Library/Logs/SlyTerm.log",
    "~/Library/Preferences/com.charlesmelki.slyterm.plist",
    "~/Library/WebKit/com.charlesmelki.slyterm",
  ]
end
