require "formula"

class Tikitool < Formula
    desc "Tikitool"
    homepage "https://github.com/ozgurcdemir/homebrew-tikitool"
    version "1.0.12"


    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/cloudquery/cloudquery/releases/download/v0.22.0/cloudquery_Darwin_arm64.zip"
        sha256 "44ce4e6fbf7f2d82311cb86a1e9734dab2ef631531857cf9318f15d81e418345"
  
        def install
          bin.install "cloudquery"
          output = Utils.safe_popen_read("#{bin}/cloudquery", "completion", "bash")
          (bash_completion/"cloudquery").write output
          output = Utils.safe_popen_read("#{bin}/cloudquery", "completion", "zsh")
          (zsh_completion/"_cloudquery").write output
          output = Utils.safe_popen_read("#{bin}/cloudquery", "completion", "fish")
          (fish_completion/"cloudquery.fish").write output
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/cloudquery/cloudquery/releases/download/v0.22.0/cloudquery_Darwin_x86_64.zip"
        sha256 "eb4f2f632478b4e58b7d0d16db1e3798a25772e76890af0b175fe9c865faea4f"
  
        def install
          bin.install "cloudquery"
          output = Utils.safe_popen_read("#{bin}/cloudquery", "completion", "bash")
          (bash_completion/"cloudquery").write output
          output = Utils.safe_popen_read("#{bin}/cloudquery", "completion", "zsh")
          (zsh_completion/"_cloudquery").write output
          output = Utils.safe_popen_read("#{bin}/cloudquery", "completion", "fish")
          (fish_completion/"cloudquery.fish").write output
        end
      end
    end
  








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
