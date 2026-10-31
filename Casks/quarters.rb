cask "quarters" do
  version "0.8.2"
  sha256 "015b5cb698cce3074cab2c463fe483d3c2233f030ca16aff2f40c107f7c38fab"

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
