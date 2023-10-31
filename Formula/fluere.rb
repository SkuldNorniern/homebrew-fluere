class Fluere < Formula
  desc "Fluere is a cross-platform network tool aimed at pcap sniffing, netflow dump."
  homepage "https://github.com/SkuldNorniern/fluere"
  on_arm do
    url "https://github.com/SkuldNorniern/fluere/releases/download/v.0.6.1/fluere_0.6.1_macos_intel.tar.gz"
    sha256 "e741102584a0a5db0f6bcafbe858868912278037ef4fe0c6507bbc4e06db4c24"
  end
  on_intel do
    url "https://github.com/SkuldNorniern/fluere/releases/download/v.0.6.1/fluere_0.6.1_macos_apple.tar.gz"
    sha256 "20bf318d40f3a128b7f53b6969d702ed6f3ea64eacd1407b7378fbb22d206be0"
  end
  version "0.6.1"

  depends_on "libpcap"



  def install
    bin.install "fluere"
  end

  test do
    system "fluere", "--version"
  end
end
