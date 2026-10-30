class QuartersServer < Formula
  desc "Quarters as a server: coding agents across your projects, from a browser"
  homepage "https://quarters.amithgc.com/"
  version "0.8.0"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/amithgc/quarters/releases/download/v#{version}/quarters-linux-amd64.tar.gz"
      sha256 "dcf78b94b9a1d5a866d8d32229b8b77fca0004d608e2dbc7de0e75e9beaed482"
    end
    on_arm do
      url "https://github.com/amithgc/quarters/releases/download/v#{version}/quarters-linux-arm64.tar.gz"
      sha256 "bc178db586808a41f368e408b26f46f72b9d1d9e669ed2ed4859ef91d854c7d6"
    end
  end

  def install
    bin.install "quarters"
  end

  test do
    assert_match "set-password", shell_output("#{bin}/quarters --help")
  end
end
