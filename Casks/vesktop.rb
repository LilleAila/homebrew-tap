cask "vesktop" do
  version "1.5.5"
  sha256 "9644e6e5d59b28ff34c3a25b9c5c24d3510cdf0de0bbe1ef2c0bff0e07ca64d2"

  url "https://github.com/Vencord/Vesktop/releases/download/v#{version}/Vesktop-#{version}-universal.dmg"

  name "Vesktop"
  desc "Vesktop gives you the performance of web Discord and the comfort of Discord Desktop"
  homepage "https://github.com/Vencord/Vesktop"

  app "Vesktop.app"

  livecheck do
    url "https://github.com/Vencord/Vesktop.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
