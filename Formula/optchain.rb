# The Homebrew formula, as scripts/brew-release.sh fills it in and
# publishes it to the public tap (OptionsMeerkat/homebrew-tap). The @…@
# fields name the release: its version and, for each platform, the
# binary's download (a release file of the tap) and SHA-256.
#
# The source repository is private; the tap publishes built binaries
# only, so installing needs no credentials and no Rust.
class Optchain < Formula
  desc "Options Meerkat: US option chains, implied volatility, and a terminal dashboard"
  homepage "https://optionsmeerkat.com"
  version "0.1.0.1236"

  on_macos do
    on_arm do
      url "https://github.com/OptionsMeerkat/homebrew-tap/releases/download/v0.1.0.1236/optchain-0.1.0.1236-aarch64-apple-darwin.tar.gz"
      sha256 "05011fb0fe1bba8477fa16036ee3a332839dcc7f7a37135b3c5ba49794348530"
    end
    on_intel do
      url "https://github.com/OptionsMeerkat/homebrew-tap/releases/download/v0.1.0.1236/optchain-0.1.0.1236-x86_64-apple-darwin.tar.gz"
      sha256 "aad2f7cf6af2f92f64a769a913fb4e4132bcb63d64f1ecbd0934fbc28609ceb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/OptionsMeerkat/homebrew-tap/releases/download/v0.1.0.1236/optchain-0.1.0.1236-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0014569f0b1a3351bfda29ac6ed6426ad29c07f2f8d8a27d19d91aeec50d7a9c"
    end
    on_intel do
      url "https://github.com/OptionsMeerkat/homebrew-tap/releases/download/v0.1.0.1236/optchain-0.1.0.1236-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97f0cb276e2f0759dce222839ab037a5a56c18e57dd7bfb0be5c326f53715653"
    end
  end

  def install
    bin.install "optchain"
  end

  test do
    assert_match "optchain", shell_output("#{bin}/optchain --version")
  end
end
