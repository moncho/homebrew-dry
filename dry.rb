DRY_VERSION= "0.6-alpha.1".freeze

class Dry < Formula
  desc "docker container manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.6-alpha.5/dry-darwin-amd64"
  version "v0.6-alpha.5"
  sha256 "74b88ad3a5a649524517810400ed309a3beb87459d6f3efbed181ae1e434beda"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
