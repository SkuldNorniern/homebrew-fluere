class Fluere < Formula
  desc "Fluere is a cross-platform network tool aimed at pcap sniffing, netflow dump."
  homepage "https://github.com/SkuldNorniern/fluere"
  on_arm do
    url "https://github.com/SkuldNorniern/fluere/releases/download/v0.7.0/fluere_0.7.0_macos_apple.tar.gz"
    sha256 "d1d2e3440e49ccf44580935309317fa3637c7d76dbfeb2582f2fcd7cea0930b2"
  end
  on_intel do
    url "https://github.com/SkuldNorniern/fluere/releases/download/v0.7.0/fluere_0.7.0_macos_intel.tar.gz"
    sha256 "fef93b4a96a47f42abe656b8b954f4d7203da448c5193939e47fb3e0f2bd084b"
  end
  version "0.7.0"

  depends_on "libpcap"



  def install
    bin.install "fluere"
  end

  test do
    system "fluere", "--version"
  end
end
