DRY_VERSION= "v0.8-beta.4".freeze

class Dry < Formula
  desc "docker container and swarm manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.8-beta.4/dry-darwin-amd64"
  version "v0.8-beta.4"
  sha256 "aa1befc126ed9dd99af77beffe0b8441b4bac908c89f1882a85694f016ffb71c"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
