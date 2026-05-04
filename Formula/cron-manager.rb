class CronManager < Formula
  desc "Interactive macOS user crontab manager"
  homepage "https://github.com/jeyraof/cron-manager"
  version "0.2.0"
  url "https://github.com/jeyraof/cron-manager/releases/download/v0.2.0/cron-manager-v0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "6d80cc710c99da20a0e735ca841b7ba496361a4eac664913c3df3c492f7af6a8"

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
