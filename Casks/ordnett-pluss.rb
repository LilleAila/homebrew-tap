cask "ordnett-pluss" do
  version "3.3.5"

  url "https://stordnettplussprod.blob.core.windows.net/packages/ordnettpluss-#{version}-vestland_fylkeskommune.dmg"
  sha256 "eb835aef194412ede8e9267c2088f96a1e5c78495bce43101359e91c622566df"

  name "Ordnett pluss"
  desc "Ordbøker"
  homepage "https://www.skoleportalen.no/programvare/velg-maskintype/mac/"

  pkg "OrdnettPluss3.app"
end
