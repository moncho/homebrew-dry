DRY_VERSION= "v0.9-beta.8".freeze

class Dry < Formula
  desc "a Docker manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  version "v0.9-beta.8"
  if OS.mac?
    sha256 "24176c235a49abcd4f67ea1dec49a60ccb3c1596339f1718a91133e5303dff9b"
    url "https://github.com/moncho/dry/releases/download/#{version}/dry-darwin-amd64"
  elsif OS.linux?
    sha256 "17ae95eca8f2f16de873b1506c311241a4b9359e035e00f201828ef84c8e4931"
    url "https://github.com/moncho/dry/releases/download/#{version}/dry-linux-amd64"
  end

  def install
    if OS.mac?
      mv "dry-darwin-amd64", "dry"
    elsif OS.linux?
      mv "dry-linux-amd64", "dry"
    end
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
