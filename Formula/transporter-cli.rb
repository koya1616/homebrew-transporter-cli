# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TransporterCli < Formula
  desc "平田さんトランスポータCLI"
  homepage "https://github.com/koya1616/transporter-cli"
  url "https://github.com/koya1616/transporter-cli/archive/refs/tags/0.0.2.tar.gz"
  sha256 "f9b098df675e41245502c00332e6ee585da2a0cbd12f7fc9b1fb8e3ca019f54b"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test transporter-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
