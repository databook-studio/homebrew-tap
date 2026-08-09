class Saya < Formula
  desc "Database-aware terminal AI agent: TUI, schema discovery, read-only SQL"
  homepage "https://github.com/databook-studio/saya-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.2.0/saya-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "e476dd7d617af5fbacf177185ae130e48137e0572e209ee841333c9be16e693e"
    end
    on_intel do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.2.0/saya-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "d463a4401f12b8f7cbbb36651d500c668405eed38e1605b467faf816b03937c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/databook-studio/saya-cli/releases/download/v0.2.0/saya-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce4c8737a7ebdcb6280d4c5a8b2cd48c563d99285ef2596003c4fc2163f238c0"
    end
  end

  def install
    bin.install "saya"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/saya --version")
  end
end
