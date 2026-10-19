# Written by Janus's release workflow (scripts/formula.sh in
# risadams/Janus) for each stable release; a change made here is lost at
# the next one.
class Janus < Formula
  desc "Local proxy for Claude Code that tracks cost and keeps secrets local"
  homepage "https://risadams.github.io/Janus/"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/risadams/Janus/releases/download/v0.9.0/janus_0.9.0_darwin_arm64.tar.gz"
      sha256 "24f6337d11e95f5ce1b45a323e36983b4765710e5e57885df138f8e8016a38a8"
    end
    on_intel do
      url "https://github.com/risadams/Janus/releases/download/v0.9.0/janus_0.9.0_darwin_amd64.tar.gz"
      sha256 "8a596c2d8a3528fdb8963ddfcac0b36657ecdec40e1a4b1be3e7b72f2059a00c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/risadams/Janus/releases/download/v0.9.0/janus_0.9.0_linux_arm64.tar.gz"
      sha256 "d460583b9adf885f464ea7844384d036fb10041bcc53fa90a09699d87dd82a86"
    end
    on_intel do
      url "https://github.com/risadams/Janus/releases/download/v0.9.0/janus_0.9.0_linux_amd64.tar.gz"
      sha256 "efe409a7d642654cda3250faa80488684e7dba88b048d648b87728a3d3e36d9d"
    end
  end

  def install
    bin.install "janus"
    generate_completions_from_executable(bin/"janus", "completion")
  end

  test do
    assert_equal "janus v#{version}", shell_output("#{bin}/janus version").strip
  end
end
