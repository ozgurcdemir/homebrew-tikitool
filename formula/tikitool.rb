require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.27"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.27/tikitool_darwin_arm64"
      sha256 "99e36cdbd1825a76af08ccfb869da238052d88ec823e845e505681e2f1539f78"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.27/tikitool_darwin_amd64"
       sha256 "d83c8d11614d4dade55220e42dd77912de5671790acec86201e85539f8a9249b"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.27/tikitool_linux_amd64"
      sha256 "8ac8f6575a5132b49ddbd9d3b048d0bd1fd59a27859414b48c5fb5d686b7c699"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
