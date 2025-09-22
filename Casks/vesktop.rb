cask "vesktop" do
  version "1.5.8"
  sha256 "a0bb9b827e46a0c802a956bd6f16829e6a88022b53ededadfc55cb129393b788"

  url "https://github.com/Vencord/Vesktop/releases/download/v#{version}/Vesktop-#{version}-universal.dmg"

  name "Vesktop"
  desc "Vesktop gives you the performance of web Discord and the comfort of Discord Desktop"
  homepage "https://github.com/Vencord/Vesktop"

  depends_on macos: ">= :big_sur"

  app "Vesktop.app"

  livecheck do
    url "https://github.com/Vencord/Vesktop.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  zap trash: "~/Library/Application Support/vesktop"
end
