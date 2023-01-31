# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Fluere < Formula
  desc "Fluere is a cross-platform network tool aimed at pcap sniffing, netflow dump."
  homepage "https://github.com/SkuldNorniern/fluere"
  url ""
  sha256 ""
  version "0.3.0"

  depends_on arch: :x86_64
  depends_on "libpcap"

  end

  def install
    bin.install "fluere"

  end
end
