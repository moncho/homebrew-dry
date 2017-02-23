DRY_VERSION= "0.6-beta.2".freeze

class Dry < Formula
  desc "docker container manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.6-beta.2/dry-darwin-amd64"
  version "v0.6-beta.2"
  sha256 "5be3cf9f53daf06c9a8793eb5de19588156569555898a3e0ca48ed417be1c188"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
