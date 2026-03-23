class Vex < Formula
  desc "AI-native version control workflow engine"
  homepage "https://github.com/sandipndev/vex"
  version "0.7.12"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-aarch64-darwin.tar.gz"
      sha256 "3a70cd4d18d738178c4cb77552d903e71e86525e56447853fe7ab3ec65bc89f6"
    else
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-x86_64-darwin.tar.gz"
      sha256 "8d09d740797d285cb7c06b9c2e4409e1bcc011a0aa1898e8748758d3d0f6715b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-aarch64-linux.tar.gz"
      sha256 "26fd1e856e5048d82cb371a8455bb53d3ae8bad1f1013541fda2feeef20366c5"
    else
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-x86_64-linux.tar.gz"
      sha256 "2bc411d38220c318db4e73eeda572a65b496de9fbc42ab28041213feec44f237"
    end
  end

  def install
    bin.install "vex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vex --version")
  end
end
