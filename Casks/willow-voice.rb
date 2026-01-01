cask "willow-voice" do
  version "latest"
  sha256 :no_check

  # Note: Willow Voice requires manual download from website
  # Visit: https://willowvoice.com to download
  # This cask is a placeholder for future automation
  url "https://willowvoice.com",
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

