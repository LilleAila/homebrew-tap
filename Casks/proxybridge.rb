# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "proxybridge" do
  version "3.0"
  sha256 "739705d01a494ebc50aa8b5e3f7b49f9f1ed30802c12fdcea117ef97627f99b0"

  url "https://github.com/InterceptSuite/ProxyBridge/releases/download/v#{version}/ProxyBridge-v#{version}-Universal-Installer.pkg"
  name "ProxyBridge"
  desc "Redirect any Windows/MacOS TCP and UDP traffic to HTTP/Socks5 proxy"
  homepage "https://github.com/InterceptSuite/ProxyBridge"

  livecheck do
    url "https://github.com/InterceptSuite/ProxyBridge/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  pkg "ProxyBridge-v#{version}-Universal-Installer.pkg"

  zap trash: [
    "~/Library/Application Support/ProxyBridge",
    "~/Library/Preferences/com.interceptsuite.ProxyBridge.plist",
    "~/Library/Logs/ProxyBridge",
    "~/Library/Caches/com.interceptsuite.ProxyBridge"
  ]
end
