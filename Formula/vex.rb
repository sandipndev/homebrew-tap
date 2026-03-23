class Vex < Formula
  desc "AI-native version control workflow engine"
  homepage "https://github.com/sandipndev/vex"
  version "0.7.13"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-aarch64-darwin.tar.gz"
      sha256 "1682668eb1d75d74f0b0a95769c2cf3f75e86119942bd8ee6a15bbc090f11480"
    else
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-x86_64-darwin.tar.gz"
      sha256 "8719243b29b96f39f37ac9dcc1caf8f0bc726aee442a827ffc8d64970523ee13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-aarch64-linux.tar.gz"
      sha256 "feb5e24917a23d1e1df03c029698bef36d3b57efc76f5821fe0585fd97f2f311"
    else
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-x86_64-linux.tar.gz"
      sha256 "db1272ded8abda03a6f7e3ec9a7c1b226cc9aabb1c15f8c203d3e5846f28d388"
    end
  end

  def install
    bin.install "vex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vex --version")
  end
end
