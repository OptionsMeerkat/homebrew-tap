# The Homebrew formula, as scripts/release.sh fills it in and
# publishes it to the public tap (OptionsMeerkat/homebrew-tap). The @…@
# fields name the release: its version and, for each platform, the
# binary's download (a release file of the tap) and SHA-256.
#
# The source repository is private; the tap publishes built binaries
# only, so installing needs no credentials and no Rust.
class Optchain < Formula
  desc "Options Meerkat: US option chains, implied volatility, and a terminal dashboard"
  homepage "https://optionsmeerkat.com"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/OptionsMeerkat/homebrew-tap/releases/download/v0.2.0/optchain-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "8eccabf964789c575037d781076f365d7656bc3502aff58ae28c552fb98f60c9"
    end
    on_intel do
      url "https://github.com/OptionsMeerkat/homebrew-tap/releases/download/v0.2.0/optchain-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "a106e69c832316f0a78ce6fd65b33d9f2bf0a71bfcb25dd3cade37a40c441c84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OptionsMeerkat/homebrew-tap/releases/download/v0.2.0/optchain-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0b60ebcea9be2f4d5f9c144294a916a41fb931d8e6b6eb0289341d18bb74e79"
    end
    on_intel do
      url "https://github.com/OptionsMeerkat/homebrew-tap/releases/download/v0.2.0/optchain-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb9ecb607b9e1f04ab4b49073a34ab25403f86b841e5a64eebfe8e879d2f952f"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
