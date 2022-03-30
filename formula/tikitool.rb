require "formula"

class Tikitool < Formula
    desc "Tikitool"
    homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
    version "1.0.12"


    url "https://github.com/ozgurcdemir/homebrew-tikitool/blob/main/binaries/tikitool_darwin_amd64"
    sha256 "4beeb6c33bd16b505ebe938bb8ffe211e2e76ef2867eccb72afee9907eae8366"
  
    def install
      bin.install "tikitool"
    end
  
    # Homebrew requires tests.
    test do
      assert_match "\"v1.0.12\"", shell_output("#{bin}/tikitool version | grep version| cut -d':' -f2", 2)
    end
end
