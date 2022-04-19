require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.31"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.31/tikitool_darwin_arm64"
      sha256 "695c523869c2eb25b89241f33974c3c0757793919893fdc12c5719428f145442"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.31/tikitool_darwin_amd64"
       sha256 "eec976fba72b68620144a8b524aeff769812ffe0f69da4b743b0a5c797dabd3d"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.31/tikitool_linux_amd64"
      sha256 "92cf29f1e6296ecc8dfd3c3c42c5ab684946828876334918ff2e5c35ef5f938a"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
