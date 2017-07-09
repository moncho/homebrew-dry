DRY_VERSION= "v0.8-beta.3".freeze

class Dry < Formula
  desc "docker container and swarm manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.8-beta.3/dry-darwin-amd64"
  version "v0.8-beta.3"
  sha256 "d1ebd9def79394e05265bbd1ed5db6f12190de08dc04120cc5f74da6b67134a1"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
