# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Fluere < Formula
  desc "Fluere is a cross-platform network tool aimed at pcap sniffing, netflow dump."
  homepage "https://github.com/SkuldNorniern/fluere"
  url "https://github.com/SkuldNorniern/fluere/releases/download/v.0.3.1/fluere_0.3.1_macos_intel.tar.gz"
  sha256 "0aa0aeb38981d8beae47968d1f67b93a547f15ef4f0fabe4ded7d495cc4835fd"
  version "0.3.1"

  depends_on arch: :x86_64
  depends_on "libpcap"


  def install
    bin.install "fluere"
  end

  test do 
    system "fluere", "--version"
  end
end
