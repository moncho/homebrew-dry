DRY_VERSION= "0.7-beta.2".freeze

class Dry < Formula
  desc "docker container manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.7-beta.2/dry-darwin-amd64"
  version "v0.7-beta.2"
  sha256 "db37452126cc6f222e29db4b7dfb3e3e9a66c75a3e9b7e841b6e19469ce7ae75"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
