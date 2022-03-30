require "formula"

class Tikitool < Formula
    desc "Tikitool"
    homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
    version "1.0.12"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/ozgurcdemir/homebrew-tikitool/blob/main/binaries/tikitool_darwin_arm64"
        sha256 "4beeb6c33bd16b505ebe938bb8ffe211e2e76ef2867eccb72afee9907eae8366"
  
        def install
          bin.install "tikitool_darwin_arm64"
          system "mv", "tikitool_darwin_arm64", "/usr/local/bin/tikitool"
          system "chmod", "+x", "/usr/local/bin/tikitool"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/ozgurcdemir/homebrew-tikitool/blob/main/binaries/tikitool_darwin_amd64"
        sha256 "8fe3e534dc10bb2a73815ba8aa16a3e27f96fbf8d4f1a3b8b419eee0fa9fb39f"
  
        def install
          bin.install "tikitool"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/ozgurcdemir/homebrew-tikitool/blob/main/binaries/tikitool_linux_amd64"
        sha256 "63e4b6ff9529eee9fea62a1124be85f385c208a68c6edcb5dc8e07cac4c9b05c"
  
        def install
          bin.install "tikitool"
        end
      end
    end

end
