class Karabingen < Formula
  desc "CLI tool to generate karabiner.json file from simplified YAML"
  homepage "https://github.com/fgazat/karabingen"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fgazat/karabingen/releases/download/v0.1.1/karabingen_0.1.1_darwin_arm64.tar.gz"
      sha256 "b0921b57aabba8ecc6d9c7c120147a1b424280eef14b816c5739d5b890b8988f"
    else
      url "https://github.com/fgazat/karabingen/releases/download/v0.1.1/karabingen_0.1.1_darwin_amd64.tar.gz"
      sha256 "fb7acb0b3c6be44adfc9e9451fe4794d8f14cf58830beba1388e912171426e96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fgazat/karabingen/releases/download/v0.1.1/karabingen_0.1.1_linux_arm64.tar.gz"
      sha256 "5543739881ee1e7bccf724527053ba908ae675e0461171c8d4f5efd01bc82765"
    else
      url "https://github.com/fgazat/karabingen/releases/download/v0.1.1/karabingen_0.1.1_linux_amd64.tar.gz"
      sha256 "7b6d5bb7c0cce37b07e42f1b0a4c3d8431eb275693c64b87249ca5cd5d345da9"
    end
  end

  def install
    bin.install "karabingen"
  end

  test do
    system "#{bin}/karabingen", "--help"
  end
end
