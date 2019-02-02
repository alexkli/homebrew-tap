class WskLatest < Formula
  desc "OpenWhisk Command-Line Interface (CLI) - Lastest devel release"
  homepage "https://openwhisk.apache.org/"
  url "https://github.com/apache/incubator-openwhisk-cli/releases/download/latest/OpenWhisk_CLI-latest-mac-amd64.zip"
  version "latest"

  # this provides wsk as well, just a different version
  conflicts_with "wsk"
  
  def install
    bin.install "wsk"
  end

  test do
    system "#{bin}/wsk", "property", "set", "--apihost", "https://127.0.0.1"
  end
end
