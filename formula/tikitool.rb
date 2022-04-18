require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.30"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.30/tikitool_darwin_arm64"
      sha256 "0dbe82a40688b332a0dfcc2d96c5be55bcb839290d5715787217e00e02b95a31"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.30/tikitool_darwin_amd64"
       sha256 "233a9fd6cb428d205fa98e349b90d7829c2c78709ffbafd283a8e00d0092f1b6"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.30/tikitool_linux_amd64"
      sha256 "ca92f390635e2c961792ecc895b3684594798bf6baeb1e96f11dfeacb44eb664"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
