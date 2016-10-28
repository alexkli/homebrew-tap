class Wrk2 < Formula
  desc "HTTP benchmarking tool (fork by Gil Tene)"
  homepage "https://github.com/giltene/wrk2"
  head "https://github.com/giltene/wrk2.git"

  depends_on "openssl"

  def install
    ENV.j1
    system "make"
    bin.install "wrk"
    # Prevent a conflict between this and original wrk
    mv bin/"wrk", bin/"wrk2"
  end

  test do
    system "#{bin}/wrk2", "-R", "5", "-c", "1", "-t", "1", "-d", "1", "https://example.com/"
  end
end
