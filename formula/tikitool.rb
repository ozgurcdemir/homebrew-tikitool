require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.28"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.28/tikitool_darwin_arm64"
      sha256 "bf4b7cb23e1123eb2b688a0482a88f7efdb6f6a5013f15d961bfb9e38a66c3a3"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.28/tikitool_darwin_amd64"
       sha256 "da94f895f488bdba308158f0dcd939591787aa7434f7ca4b4137b93f091e3a62"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.28/tikitool_linux_amd64"
      sha256 "816f60b164a7e4646e4ceee6a035260d81edc0f43ecf3e2935f848512ac1dae1"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
