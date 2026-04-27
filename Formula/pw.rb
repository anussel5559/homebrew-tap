class Pw < Formula
  desc "Terminal-based Formula 1 Session Interface"
  homepage "https://github.com/anussel5559/f1-pitwall"
  version "0.31.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/anussel5559/f1-pitwall/releases/download/v0.31.0/pw-x86_64-apple-darwin.tar.gz"
    sha256 "8ed198a243ba8b5b4aa8ff3f74c6db84f603d82bb2b6a706c3406efd79123b9c"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/anussel5559/f1-pitwall/releases/download/v0.31.0/pw-aarch64-apple-darwin.tar.gz"
    sha256 "6d548907596541b2139a2dc2b1d01071d5c822de9580d08009da827eccad13d0"
  elsif OS.linux?
    url "https://github.com/anussel5559/f1-pitwall/releases/download/v0.31.0/pw-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "55df0b53ae5cbeeada6ae0657d6c879e64d623176c27e0d7dbe1a9fafcadec5e"
  end

  def install
    bin.install "pw"
  end
end
