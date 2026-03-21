class Vex < Formula
  desc "AI-native version control workflow engine"
  homepage "https://github.com/sandipndev/vex"
  version "0.7.4"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-aarch64-darwin.tar.gz"
      sha256 "815cc9232ef63089aedba94dd2e979c60145e1d3096ee4d043ba7ce6b249b80c"
    else
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-x86_64-darwin.tar.gz"
      sha256 "b1d0f878f717e4336254f8c8cc07529eb59af23432599e691c0282f2da990ed8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-aarch64-linux.tar.gz"
      sha256 "81591392e58cb0041e956210200dc66f94b52c94c747eec1d39c20fdb8c060e1"
    else
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-x86_64-linux.tar.gz"
      sha256 "b59f2d84aae86e8d82359e004cf567fb7254a4e7cc4b35fee12c3fec9eb38e5b"
    end
  end

  def install
    bin.install "vex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vex --version")
  end
end
