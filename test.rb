class TransporterCli < Formula
  desc "平田さんトランスポータCLI"
  homepage "https://github.com/koya1616/transporter-cli"
  url "https://github.com/koya1616/transporter-cli/archive/0.0.1.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
