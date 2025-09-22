# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "uvi-portal" do
  version "3.0.15"
  sha256 "73329c6ac549cf97c3f481d1ea94c2260ba7a815bba6125ea15682e16505f827"

  url "https://cdn.uvi.net/PORTAL_Uvi_portal/files/#{version}/20250116_111109/UVI_Portal.dmg"
  name "uvi-portal"
  desc "The gateway to all UVI products, and much more"
  homepage "https://www.uvi.net/uvi-portal"

  livecheck do
    skip
  end

  depends_on macos: ">= :mojave"

  pkg "UVI Portal.pkg"

  zap trash: "~/Library/Application Support/UVI Portal"
end
