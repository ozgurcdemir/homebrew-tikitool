require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "v1.1.29"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.29/tikitool_darwin_arm64"
      sha256 "e971ddc3045987856cc496ab553865a3cd067d7b78ad6553bddf5e6f9e874a8a"
    
      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
     if Hardware::CPU.intel?
       url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.29/tikitool_darwin_amd64"
       sha256 "c10959231adab1bfc739eb8471d6c04fa641546ad3d4094da8ca85e86131372a"
 
      def install
         bin.install "tikitool_darwin_amd64" => "tikitool"
       end
    end
   end
 
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.29/tikitool_linux_amd64"
      sha256 "64026b79c950b49319fd95bfd440f5ba59fef300d099864177654b168e907d1e"
 
      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
