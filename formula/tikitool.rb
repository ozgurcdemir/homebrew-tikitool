require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.28"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.28/tikitool_darwin_arm64"
      sha256 "5431100e6713a1da16bab2b99e800869e0ff26c1ce6a193a3dc26d2e470bae80"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.28/tikitool_darwin_amd64"
       sha256 "9d213792b105c58b52f1fbb56fdfa701a9ffd13d1cf0b25dde24be46fa0d447e"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.28/tikitool_linux_amd64"
      sha256 "dd92bc7fa8780c001b2890e8b79b91c530d9e919fc1c2bac9923f80d963ed2c5"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
