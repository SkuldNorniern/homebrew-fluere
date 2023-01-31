# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Fluere < Formula
  desc "Fluere is a cross-platform network tool aimed at pcap sniffing, netflow dump."
  homepage "https://github.com/SkuldNorniern/fluere"
  url "https://github.com/SkuldNorniern/fluere/releases/download/v.0.3.0/fluere_0.3.0_macos_intel.tar.gz"
  sha256 "2560e1112cfe6b11e1f28573a9c6032031eee6dc7521ec63be03b961c13bc9d7"
  version "0.3.0"

  depends_on arch: :x86_64
  depends_on "libpcap"


  def install
    bin.install "fluere"
  end

  test do 
    system "fluere", "--version"
  end
end