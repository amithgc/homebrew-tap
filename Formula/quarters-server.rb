class QuartersServer < Formula
  desc "Quarters as a server: coding agents across your projects, from a browser"
  homepage "https://quarters.amithgc.com/"
  version "0.8.1"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/amithgc/quarters/releases/download/v#{version}/quarters-linux-amd64.tar.gz"
      sha256 "1c64e48360bbab906f529f2c2123207cb4c22f574ae5e6753e69895ecc96aab3"
    end
    on_arm do
      url "https://github.com/amithgc/quarters/releases/download/v#{version}/quarters-linux-arm64.tar.gz"
      sha256 "bb1f15780e93dbf86adb5ded2e288512db0b9848c8a457273268428564234d6e"
    end
  end

  def install
    bin.install "quarters"
  end

  test do
    assert_match "set-password", shell_output("#{bin}/quarters --help")
  end
end
