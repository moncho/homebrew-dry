DRY_VERSION= "0.6-alpha.1".freeze

class Dry < Formula
  desc "docker container manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.6-beta.1/dry-darwin-amd64"
  version "v0.6-alpha.5"
  sha256 "3ab9b37a31601705132bfbd21a8d33f3504d21a0522af5aae013cc80a4a4a4ec"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
