DRY_VERSION= "0.7-beta.4".freeze

class Dry < Formula
  desc "docker container manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.8-beta.1/dry-darwin-amd64"
  version "v0.8-beta.1"
  sha256 "fdf9e7c7257b6b16c22449a974064372aa15728de0ae8a8b5540f226ba762bcb"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
