require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.30"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.30/tikitool_darwin_arm64"
      sha256 "84eec66aeee620a1cf42729391d535635430c61023f2cc1416bcbdc8eb4c682b"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.30/tikitool_darwin_amd64"
       sha256 "251f9961069229792cc68c99e2fdc84418a14d64f6c5074ac0208b8d4d59d4bf"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.30/tikitool_linux_amd64"
      sha256 "7da1714326f9f208bfde9020539af688aadaa4cfa4babe0881843380f33d3523"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
