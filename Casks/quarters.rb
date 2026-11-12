cask "quarters" do
  version "0.10.1"
  sha256 "63193c56295ac264a4f069cc2eabde77e0b4fbd0860a8acd54c8a67bedaf6d47"

  url "https://github.com/amithgc/quarters/releases/download/v#{version}/Quarters-#{version}.zip"
  name "Quarters"
  desc "Minimalist home for terminal coding agents across many projects"
  homepage "https://quarters.amithgc.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Quarters.app"

  zap trash: [
    "~/.config/quarters",
    "~/Library/Caches/io.github.amithgc.quarters",
    "~/Library/Preferences/io.github.amithgc.quarters.plist",
    "~/Library/WebKit/io.github.amithgc.quarters",
  ]
end
