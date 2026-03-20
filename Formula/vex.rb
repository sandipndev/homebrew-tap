class Vex < Formula
  desc "AI-native version control workflow engine"
  homepage "https://github.com/sandipndev/vex"
  version "0.7.3"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-aarch64-darwin.tar.gz"
      sha256 "9c241070052a7a5d3d0114bcf16efdbfc170ee02bfbfbff6eee29899c00bee61"
    else
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-x86_64-darwin.tar.gz"
      sha256 "cfee51afc7d9f16159f9c3f97f37d6fcb2d310153b808504e0ba719683918f7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-aarch64-linux.tar.gz"
      sha256 "c64f08bae7d5490d61267c53d7185c1766f31cee32a17d01ee302bdff3a9ab97"
    else
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-x86_64-linux.tar.gz"
      sha256 "a2dd86b05929b842a78ee0286310239e986c1c0bc1ca4722ffbc7c300dbb8f1c"
    end
  end

  def install
    bin.install "vex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vex --version")
  end
end
