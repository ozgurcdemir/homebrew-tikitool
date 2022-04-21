require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.34"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.34/tikitool_darwin_arm64"
      sha256 "5a2870a108ecae9293ae0590a32ead75cfd2c750afc5dd4474b5fb660dc97ec5"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.34/tikitool_darwin_amd64"
       sha256 "749ee80a61acc4bb8e3dc48175149668134d8bab3dc28a6d55ace296d8402906"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.34/tikitool_linux_amd64"
      sha256 "9511b1a9e74eb35a4f29bf38e1f31ef7fceeb2198ba10da7d93f32a23495fa2c"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
