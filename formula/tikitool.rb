require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.27"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.27/tikitool_darwin_arm64"
      sha256 "3b2b4f636781b87e5202d5245a62f1f5a723da0b21c003223e6f30ca4a5f4df2"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.27/tikitool_darwin_amd64"
       sha256 "b3c049a78ff00b57d7cc7e5aada7b2df0599971e4ac4d82bce934ae4432f5b16"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.27/tikitool_linux_amd64"
      sha256 "742ac0d057042b13656c217d098a57802845d59647dfbab240bf2a903f22a72d"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
