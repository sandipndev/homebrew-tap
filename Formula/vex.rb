class Vex < Formula
  desc "AI-native version control workflow engine"
  homepage "https://github.com/sandipndev/vex"
  version "0.7.8"
  license "AGPL-3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-aarch64-darwin.tar.gz"
      sha256 "6312edd1f1f4073d5fb88709c373e07d28da4d8a2905759cfaa3028d03f93243"
    else
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-x86_64-darwin.tar.gz"
      sha256 "4b8e1568a0450d44f549f0b80c2d4fe6e1815b1f75197d58fe76bbb067cf735f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-aarch64-linux.tar.gz"
      sha256 "2f6b9f89d66da292ead7df7758f70f930a4cff60ae98f4cf39663f522730dd08"
    else
      url "https://github.com/sandipndev/vex/releases/download/v#{version}/vex-x86_64-linux.tar.gz"
      sha256 "470c38f7ceea57358f12cf3f66763512f4484b9c1f7d274394c674221af91076"
    end
  end

  def install
    bin.install "vex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vex --version")
  end
end
