cask "wiiudownloader" do
  version "2.92"
  sha256 "2848c88d59efd1071ca630f2028556b496ab0d007b0cfeab4a15b6d536f2fe4d"

  url "https://github.com/Xpl0itU/WiiUDownloader/releases/download/v#{version}/WiiUDownloader-macOS-Universal.dmg"
  name "WiiUDownloader"
  desc "Allows to download encrypted wiiu files from nintendo's official servers"
  homepage "https://github.com/Xpl0itU/WiiUDownloader"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "WiiUDownloader.app"

  zap trash: [
    "~/Library/Preferences/com.xpl0itu.wiiudownloader.plist",
    "~/Library/Saved Application State/com.xpl0itu.wiiudownloader.savedState",
  ]
end
