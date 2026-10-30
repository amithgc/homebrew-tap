cask "quarters" do
  version "0.7.0"
  sha256 "e4fa5b2e16b84b526087521c0375a77c04c7dddfdc55205c2127ce2a79c327bc"

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
