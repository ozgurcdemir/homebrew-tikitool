require "formula"

class Tikitool < Formula"
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.9"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.9/tikitool_darwin_arm64"
      sha256 "10641bbe4e8d92a08f8fa9755f4c993b46cbf6779760827bd71bd2c5ac44bffd"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.9/tikitool_darwin_amd64"
       sha256 "41f3d18c22dd22752dc303dfb10d1cd103cf40ecb5b0b33a5adbce65bac5b698"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.9/tikitool_linux_amd64"
      sha256 "18808983013ad865a29f100e32b1943d1d7b7c9549b2b51c7aafcf0793d308af"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
