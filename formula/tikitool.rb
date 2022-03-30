require "formula"

class Tikitool < Formula
  desc "Tikitool"
  homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
  version "1.0.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/1.0.12/tikitool_darwin_arm64"
      sha256 "1b78f99657f02779a3adcdc51b5f170104fad3cb0aa08e763742d97610449cce"

      def install
        bin.install "tikitool_darwin_arm64"
        # system "mv", "tikitool_darwin_arm64", "/usr/local/bin/tikitool"
        # system "chmod", "+x", "/usr/local/bin/tikitool"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/1.0.12/tikitool_darwin_amd64"
      sha256 "8fe3e534dc10bb2a73815ba8aa16a3e27f96fbf8d4f1a3b8b419eee0fa9fb39f"

      def install
        bin.install "tikitool"
      end
    end
  end
  
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ozgurcdemir/homebrew-tikitool/releases/download/1.0.12/tikitool_linux_amd64"
      sha256 "63e4b6ff9529eee9fea62a1124be85f385c208a68c6edcb5dc8e07cac4c9b05c"

      def install
        bin.install "tikitool"
      end
    end
  end
end
