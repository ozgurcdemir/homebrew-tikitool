require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.35"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.35/tikitool_darwin_arm64"
      sha256 "7eb5068fd9ed60e6a8d7a2fea49b1f059004b5bb6a93576184c453a237b24382"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.35/tikitool_darwin_amd64"
       sha256 "f9644408bc0db67efac69cdfba8ce28c1918d065503f08568adf3ee9fc72840d"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.35/tikitool_linux_amd64"
      sha256 "dc868e5e04255f6f8563c23d8c11e2f08a8b053d41b402e7a624d356d0498eab"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
