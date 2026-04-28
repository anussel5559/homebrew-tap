class Pw < Formula
  desc "Terminal-based Formula 1 Session Interface"
  homepage "https://github.com/anussel5559/f1pitwall-rs"
  version "0.31.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/anussel5559/f1pitwall-rs/releases/download/v0.31.2/pw-x86_64-apple-darwin.tar.gz"
    sha256 "aac39984e90bb849d270e1ff95190d5ea78e2e3d43ed4016e97a278e4b063129"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/anussel5559/f1pitwall-rs/releases/download/v0.31.2/pw-aarch64-apple-darwin.tar.gz"
    sha256 "2ba45505dc8a1f2f80bdc15e1a37c477b5029732c5f30681c4961bcfd1bc6401"
  elsif OS.linux?
    url "https://github.com/anussel5559/f1pitwall-rs/releases/download/v0.31.2/pw-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c4c457a5848f9cf318f980c65bc4406c6f8279c541006d2ab18079b86341d9eb"
  end

  def install
    bin.install "pw"
  end
end
