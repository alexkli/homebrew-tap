class Bat < Formula
  desc "Cat clone with syntax highlighting and Git integration"
  homepage "https://github.com/sharkdp/bat"
  url "https://github.com/sharkdp/bat/releases/download/v0.2.3/bat-v0.2.3-x86_64-apple-darwin.tar.gz"
  sha256 "bc1e3d2f5c3963a0586b329544b173e2dfc031fbcd97028da5724b4198bf6908"

  def install
    bin.install "bat"
  end

  test do
    assert_match "bat", shell_output("#{bin}/bat -h")
  end
end
