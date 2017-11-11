DRY_VERSION= "v0.9-beta.2".freeze

class Dry < Formula
  desc "docker container and swarm manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.9-beta.2/dry-darwin-amd64"
  version "v0.9-beta.2"
  sha256 "60e694231d2326fc1a353b101be902590f1715f6d5b2a677593979540b7d3a3d"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
