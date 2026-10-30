class QuartersServer < Formula
  desc "Quarters as a server: coding agents across your projects, from a browser"
  homepage "https://quarters.amithgc.com/"
  version "0.7.0"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/amithgc/quarters/releases/download/v#{version}/quarters-linux-amd64.tar.gz"
      sha256 "cd4c0d529a391e9be55dd6070ea7e7e5c0f856393c521e7d68f6f84aec533bc7"
    end
    on_arm do
      url "https://github.com/amithgc/quarters/releases/download/v#{version}/quarters-linux-arm64.tar.gz"
      sha256 "b2b920c77ebadeb656f2b5cc28fffc3c24261275f9802f17bf88a624b5b31566"
    end
  end

  def install
    bin.install "quarters"
  end

  test do
    assert_match "set-password", shell_output("#{bin}/quarters --help")
  end
end
