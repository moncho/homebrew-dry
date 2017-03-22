DRY_VERSION= "0.7-beta.1".freeze

class Dry < Formula
  desc "docker container manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/releases/download/v0.7-beta.1/dry-darwin-amd64"
  version "v0.7-beta.1"
  sha256 "b5a7dd85b0c925f699194a3d42c530db7002bc1db33d567e661c8ac78e301ade"

  def install
    mv "dry-darwin-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
