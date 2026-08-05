class Saya < Formula
  desc "Database-aware terminal AI agent: TUI, schema discovery, read-only SQL"
  homepage "https://github.com/databook-studio/saya-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.1.2/saya-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "ddc4c8e3987e917e621e33921c60f4c80c02472f6b6b976d9747ba9cd03003bd"
    end
    on_intel do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.1.2/saya-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "35b84e093f323de06fa979b927d993ebc5fd09e4823dd19bb59364a05fc916c5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.1.2/saya-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "959172358278ef5694f77d86e316f76dc26c41f0dca10152c13bfdd250a9403e"
    end
  end

  def install
    bin.install "saya"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saya --version")
  end
end
