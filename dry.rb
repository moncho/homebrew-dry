DRY_VERSION= "0.7-beta.4".freeze

class Dry < Formula
  desc "docker container manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.7-beta.4/dry-darwin-amd64"
  version "v0.7-beta.4"
  sha256 "82f820b2812a11a5f2732118617727ea599303801be6b1e4037f224307089447"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
