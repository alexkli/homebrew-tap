class CurlImpersonate < Formula
  desc "Curl variant that impersonates browsers (lexiforest fork)"
  homepage "https://github.com/lexiforest/curl-impersonate"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lexiforest/curl-impersonate/releases/download/v1.0.0rc2/curl-impersonate-v1.0.0rc2.arm64-macos.tar.gz"
      sha256 "b4b3e8f7fbff37444d1d5552e7fb1ad32f494e4bc244940ae0c3882d8dbc3fd1"
    end
  end

  def install
    bin.install "curl-impersonate"
    bin.install Dir["curl_*"]
  end

  test do
    assert_match "curl 8.13.0-IMPERSONATE", shell_output("#{bin}/curl-impersonate --version")
  end
end
