DRY_VERSION= "v0.9-beta.1".freeze

class Dry < Formula
  desc "docker container and swarm manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.9-beta.1/dry-darwin-amd64"
  version "v0.9-beta.1"
  sha256 "636a8dca7a181e2a086327d3197836a94be5648bd1cde3b1503dd43f1eb5736a"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
