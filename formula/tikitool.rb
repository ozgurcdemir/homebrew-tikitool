class Tikitool < Formula
    desc "Tikitool"
    homepage "https://github.com/bcpitutor/gobase/tikitool"
    url "https://github.com/bcpitutor/gobase/releases/download/v1.0.12/tikitool_darwin_amd64", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "4beeb6c33bd16b505ebe938bb8ffe211e2e76ef2867eccb72afee9907eae8366"
    head "https://github.com/bcpitutor/gobase.git"
  
    def install
      bin.install "tikitool"
    end
  
    # Homebrew requires tests.
    test do
      assert_match "\"v1.0.12\"", shell_output("#{bin}/mytool version | grep version| cut -d':' -f2", 2)
    end
end
