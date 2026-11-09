class QuartersServer < Formula
  desc "Quarters as a server: coding agents across your projects, from a browser"
  homepage "https://quarters.amithgc.com/"
  version "0.9.0"
  license "MIT"

  depends_on :linux

  on_linux do
    on_intel do
      url "https://github.com/amithgc/quarters/releases/download/v#{version}/quarters-linux-amd64.tar.gz"
      sha256 "b4e685fdd41604c3644b5276355377558a1fc606f5deff697bd7dd76c577eecf"
    end
    on_arm do
      url "https://github.com/amithgc/quarters/releases/download/v#{version}/quarters-linux-arm64.tar.gz"
      sha256 "071285c45f86c5a591220a2d90a3460396e9ba515ec425a82b0af8e1f1348805"
    end
  end

  def install
    bin.install "quarters"
  end

  test do
    assert_match "set-password", shell_output("#{bin}/quarters --help")
  end
end
