DRY_VERSION= "v0.9-beta.3".freeze

class Dry < Formula
  desc "docker container and swarm manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.9-beta.3/dry-darwin-amd64"
  version "v0.9-beta.3"
  sha256 "1b54f44dfd31357fa7e7a7b20e287060c0f3f33ef1341af482798e159dece852"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
