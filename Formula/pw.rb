class Pw < Formula
  desc "Terminal-based Formula 1 Session Interface"
  homepage "https://github.com/anussel5559/f1-pitwall"
  version "0.11.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/anussel5559/f1-pitwall/releases/download/v0.11.1/pw-x86_64-apple-darwin.tar.gz"
    sha256 "5013e808da03439ad35b0b95f07d7d1618907a34b02c8421cf0f08e24ec34bf5"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/anussel5559/f1-pitwall/releases/download/v0.11.1/pw-aarch64-apple-darwin.tar.gz"
    sha256 "332b3fb45572a37a7f7c026f433679d61df0817c995a2a18e1d6e55d0c00e410"
  elsif OS.linux?
    url "https://github.com/anussel5559/f1-pitwall/releases/download/v0.11.1/pw-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8d020f58625afb1f632c5f3cdeac2ce6f319113e7c7cdb3024a8b66b1b141295"
  end

  def install
    bin.install "pw"
  end
end
