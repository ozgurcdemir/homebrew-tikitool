require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.28"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.28/tikitool_darwin_arm64"
      sha256 "bdc913c18c4234000c906eabff60367ea33e6440fd1ccf4bf4ecee265817c3c7"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.28/tikitool_darwin_amd64"
       sha256 "ebf65de3659069410ca53e0924cc7180f1210110487c8de42dbe677778cb9c6e"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.28/tikitool_linux_amd64"
      sha256 "2038efb15992a68ec04c76b6ff6e5d602c9874cc9937a29ae5739deaa7fc0402"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
