cask "willow-voice" do
  version "latest"
  sha256 :no_check

  url "https://willowvoice.com/download",
      verified: "willowvoice.com"
  name "Willow Voice"
  desc "Advanced speech-to-text application for macOS"
  homepage "https://willowvoice.com/"

  livecheck do
    url "https://willowvoice.com"
    strategy :page_match
    regex(/Willow Voice v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  app "Willow Voice.app"

  zap trash: [
    "~/Library/Application Support/Willow Voice",
    "~/Library/Preferences/com.willowvoice.app.plist",
    "~/Library/Caches/com.willowvoice.app",
  ]
end

