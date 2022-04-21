require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.32"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.32/tikitool_darwin_arm64"
      sha256 "f5375d768f2a0cfdf8c1de9514a890b4eac69774fad764e2687b9fe3246c6a72"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.32/tikitool_darwin_amd64"
       sha256 "112851a1cc04fabc647332e0797136c941d154724ae4919b8848f807cd750df0"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.32/tikitool_linux_amd64"
      sha256 "6bc741eec227f609f10fe30bfc276c4b0906717a2a5a975951edaa05ffc612c8"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
