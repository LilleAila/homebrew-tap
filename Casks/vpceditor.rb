cask "vpceditor" do
  version "1.5"
  sha256 "eefdbaab94c7ea92a1b2eb35a6cc56b298999b768cea123283d769e44c914995"

  url "https://www.kawai-global.com/data/downloads/VpcEditorForMac.zip"
  name "VpcEditor"
  homepage "http://www.kawaivpc.com/en/"

  app "VPCEditor.app"

  zap trash: ""
end
