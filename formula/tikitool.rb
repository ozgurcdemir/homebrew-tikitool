require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.10"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.10/tikitool_darwin_arm64"
      sha256 "d9d65b4639ddd927ffd3939ca373e626a65bdda71cc377bb543bf3d0ba565c94"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.10/tikitool_darwin_amd64"
       sha256 "2cfda371a434aa9621ee91d6e0b1ecc37539f8d23b9908482b641348d96a5bfc"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.10/tikitool_linux_amd64"
      sha256 "4e57f39dfafe9083d5282260e0154eb36f22d8050d82dbb3e04a4f2ee00c970c"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
