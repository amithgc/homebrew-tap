class QuartersServer < Formula
  desc "Quarters as a server: coding agents across your projects, from a browser"
  homepage "https://quarters.amithgc.com/"
  version "0.5.1"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/amithgc/quarters/releases/download/v#{version}/quarters-linux-amd64.tar.gz"
      sha256 "9d36b2d5a8d886bf5f018532d29cc7bf12ec9beec9b6a463c33a120ef27cd4dc"
    end
    on_arm do
      url "https://github.com/amithgc/quarters/releases/download/v#{version}/quarters-linux-arm64.tar.gz"
      sha256 "41caf6257bc701e24aaf0a664f989c135d8a39edb62451ecb0ae3be94e463335"
    end
  end

  def install
    bin.install "quarters"
  end

  test do
    assert_match "set-password", shell_output("#{bin}/quarters --help")
  end
end
