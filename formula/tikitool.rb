require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.28"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.28/tikitool_darwin_arm64"
      sha256 "984a16c44a6c837ada59d4eebb45bcc7a4bf5a9c6cc380d9b20d464cf2b6fdff"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.28/tikitool_darwin_amd64"
       sha256 "03d97a3005b2d31795183d9d86d0fb80bad7fbf645cce7b2f266b4d1670b363c"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.28/tikitool_linux_amd64"
      sha256 "e42b561fcd752f3b44f957388af4402b058554251105200a72d42e34ecc6d6e4"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
