class Saya < Formula
  desc "Database-aware terminal AI agent: TUI, schema discovery, read-only SQL"
  homepage "https://github.com/databook-studio/saya-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.3.1/saya-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "b20a31a92192908cd3ebebc285a9e3b4e0307dbb934d0845427dbc6fd0c5372f"
    end
    on_intel do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.3.1/saya-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "a85722e56b61b37f5e363e6600b6ac4d6205534a21d5a5ce01f5d8243ccc7271"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.3.1/saya-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07845e21fd8ce2f5ad2e6568b15ae63f8dfcc794ca5131d4a89dc62ab5094de8"
    end
  end

  def install
    bin.install "saya"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saya --version")
  end
end
