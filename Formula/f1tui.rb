class F1Tui < Formula
  desc "Terminal-based Formula 1 Session Interface"
  homepage "https://github.com/anussel5559/f1-tui"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/anussel5559/f1-tui/releases/download/v0.4.0/f1tui-x86_64-apple-darwin.tar.gz"
    sha256 "06986729db93149931241f1c6c53c960a1719f0741f5a676a43ce4e64f000402"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/anussel5559/f1-tui/releases/download/v0.4.0/f1tui-aarch64-apple-darwin.tar.gz"
    sha256 "3b601df57ce2fe6138dd4276ec38223f4a6df17db38881ca7a4438da84bb68e8"
  elsif OS.linux?
    url "https://github.com/anussel5559/f1-tui/releases/download/v0.4.0/f1tui-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "147452547693b140a33584a4907d514f7651c570508c9be1d2e00378e63f2799"
  end

  def install
    bin.install "f1tui"
  end
end
