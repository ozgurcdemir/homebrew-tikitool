require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "1.0.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.0/tikitool_darwin_arm64"
      sha256 "a187b1f7f4ed3fe771d95dac729d002bb24cc9c9f7b578299ce4813fd6f67d19"

      def install
        bin.install "tikitool_darwin_arm64" => "tikitool"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.0/tikitool_darwin_amd64"
      sha256 "e0f592a3a4a3e0167aaf90aa24c995de02c3e10dfe1d5e0224db44c2e0e6e920"

      def install
        bin.install "tikitool_darwin_amd64" => "tikitool"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/v1.1.0/tikitool_linux_amd64"
      sha256 "8249f5cd624bddafc5ed5ea6d0a392456fbee06090ff83a82bf3f69bfb95aa55"

      def install
        bin.install "tikitool_linux_amd64" => "tikitool"
      end
    end
  end
end
