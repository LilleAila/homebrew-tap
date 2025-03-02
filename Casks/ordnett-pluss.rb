cask "ordnett-pluss" do
  version "3.3.5"
  sha256 "eb835aef194412ede8e9267c2088f96a1e5c78495bce43101359e91c622566df"

  url "https://stordnettplussprod.blob.core.windows.net/packages/ordnettpluss-#{version}-vestland_fylkeskommune.dmg",
      verified: "stordnettplussprod.blob.core.windows.net"
  name "Ordnett pluss"
  desc "Ordbøker"
  homepage "https://www.skoleportalen.no/programvare/velg-maskintype/mac/"

  livecheck do
    skip "Version check is not supported for this cask"
  end

  pkg "OrdnettPluss3.pkg"

  uninstall pkgutil: "com.vendor.OrdnettPluss3"
end
