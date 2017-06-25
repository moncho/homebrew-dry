DRY_VERSION= "v0.8-beta.2".freeze

class Dry < Formula
  desc "docker container manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.8-beta.2/dry-darwin-amd64"
  version "v0.8-beta.2"
  sha256 "63c18d3cc4e8c0ae741ed884cd7eaac6243523e2127457fa26362b056d5dd988"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
