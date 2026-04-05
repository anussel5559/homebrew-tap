class F1tui < Formula
  desc "Terminal-based Formula 1 Session Interface"
  homepage "https://github.com/anussel5559/f1-tui"
  version "0.6.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/anussel5559/f1-tui/releases/download/v0.6.0/f1tui-x86_64-apple-darwin.tar.gz"
    sha256 "fade3f852a68a58145bc85d43ccdfb47e6d32b3f07b00e64aa9d78b2acc857d2"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/anussel5559/f1-tui/releases/download/v0.6.0/f1tui-aarch64-apple-darwin.tar.gz"
    sha256 "706395da17af6aa840244062460d88e443ee433a093273aefdf12173087c0ee2"
  elsif OS.linux?
    url "https://github.com/anussel5559/f1-tui/releases/download/v0.6.0/f1tui-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9487d8af2e81fe383f1a8ae21aa38917642d7ea8969ec3c8652b33691755926b"
  end

  def install
    bin.install "f1tui"
  end
end
