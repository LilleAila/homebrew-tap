# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "uvi-workstation" do
  version "4.0.2"
  sha256 "db61a812acde2455abdad04b44088430823429db047eebbb9326754736d60ec4"

  url "https://cdn.uvi.net/UVIWS_Uvi_workstation/files/#{version}/soft/UVI_Workstation.dmg"
  name "uvi-workstation"
  desc "The UVI Soundware Player"
  homepage "https://www.uvi.net/uvi-workstation.html"

  livecheck do
    skip
  end

  depends_on macos: ">= :mojave"

  pkg "UVI Workstation.pkg"

  zap trash: [
    "~/Library/Application Support/UVIWorkstation.settings"
    "~/Library/UVIWorkstation"
  ]
end
