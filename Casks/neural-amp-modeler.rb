cask "neural-amp-modeler" do
  version "0.7.13"
  sha256 "e9cea7a409fd167e05314d423a298ecb3b2c915eba2f8a514ee0c48a70f39173"

  url "https://github.com/sdatkinson/NeuralAmpModelerPlugin/releases/download/v#{version}/NeuralAmpModeler-v#{version}-mac.dmg"
  name "neural-amp-modeler"
  desc "Neural Amp Modeler is an open-source project that uses deep learning to create models of guitar amplifiers and pedals with state-of-the-art accuracy."
  homepage "https://www.neuralampmodeler.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "NeuralAmpModeler Installer.pkg"

  zap trash: "~/Library/Application Support/NeuralAmpModeler"
end
