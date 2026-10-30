cask "quarters" do
  version "0.8.0"
  sha256 "cf34f5362f3a74ff65882b9795fe7df3ede944c243d72e583ea1f3edf241ed87"

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
