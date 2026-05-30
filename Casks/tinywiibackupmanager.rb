cask "tinywiibackupmanager" do
  version "6.0.6"
  sha256 "43e6bb18abe953d3d747fbcf692251d146fd8f5f17e7397169a5156c575502d1"

  url "https://github.com/mq1/TinyWiiBackupManager/releases/download/v#{version}/TinyWiiBackupManager-v#{version}-macos-universal.dmg"
  name "TinyWiiBackupManager"
  desc "A tiny game backup and homebrew app manager for the Wii"
  homepage "https://github.com/mq1/TinyWiiBackupManager"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TinyWiiBackupManager.app"

  zap trash: ""
end
