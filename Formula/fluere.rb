# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Fluere < Formula
  desc "Fluere is a cross-platform network tool aimed at pcap sniffing, netflow dump."
  homepage "https://github.com/SkuldNorniern/fluere"
  url "https://github.com/SkuldNorniern/fluere/releases/download/v.0.4.0/fluere_0.4.0_macos_intel.tar.gz"
  sha256 "f7a9a3715310732c6c13f7e9a690f39878106d892178ddad62c75f9c27b6b73d"
  version "0.4.0"

  depends_on arch: :x86_64
  depends_on "libpcap"


  def install
    bin.install "fluere"
  end

  test do 
    system "fluere", "--version"
  end
end
