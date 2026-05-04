class CronManager < Formula
  desc "Interactive macOS user crontab manager"
  homepage "https://github.com/jeyraof/cron-manager"
  version "0.3.0"
  url "https://github.com/jeyraof/cron-manager/releases/download/v0.3.0/cron-manager-v0.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "5c2144c474eeefb3a4d71575c03267dec7e3d7d727ebc11c9cab3a254dc18dfe"

  depends_on arch: :arm64

  def install
    bin.install "cron-manager"
    doc.install "README.md"
    doc.install "SHA256SUMS" if File.exist?("SHA256SUMS")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cron-manager --version")
  end
end
