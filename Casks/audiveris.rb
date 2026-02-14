cask "audiveris" do
  version "64"
  sha256 "fbe70eda961b48cfed83a24407169bf87a9d4654e09730f3dbb495af792931cd"

  url "https://github.com/Audiveris/audiveris/releases/download/5.9.0/Audiveris-5.9.0-macosx-arm#{version}.dmg"
  name "Audiveris"
  desc "Latest generation of Audiveris OMR engine"
  homepage "https://github.com/Audiveris/audiveris"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Audiveris.app"

  # zap trash: ""
end
