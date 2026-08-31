class Saya < Formula
  desc "Database-aware terminal AI agent: TUI, schema discovery, read-only SQL"
  homepage "https://github.com/databook-studio/saya-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.3.2/saya-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "92dfe8e901cdb212c051ce51629095c14a21aa8c121fdd639b9d43e1a422f543"
    end
    on_intel do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.3.2/saya-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "ce1c03d8168d896d49ed745fe49bc5ba7be1e2c4b7ed9ac525bc0fde52d97f86"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.3.2/saya-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa82409115c6a3484a38d6a786d42a2bb3b2fe72566f02180aa2e7e43f9191c4"
    end
  end

  def install
    bin.install "saya"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saya --version")
  end
end
