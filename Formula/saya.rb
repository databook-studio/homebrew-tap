class Saya < Formula
  desc "Database-aware terminal AI agent: TUI, schema discovery, read-only SQL"
  homepage "https://github.com/databook-studio/saya-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.3.0/saya-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "0a6650939fd2fee6fd4618c0837da7f143cb8d3e657d52f6bbfd5cb9bce17f9a"
    end
    on_intel do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.3.0/saya-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "92b38651a24ef5198628badac7a9d6a8d1587845df3af2b87be1ace1af080f62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.3.0/saya-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1eaa61860cf97f556f1dbe779e0148eb3623db64afa156f50abfb8599ca7af36"
    end
  end

  def install
    bin.install "saya"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saya --version")
  end
end
