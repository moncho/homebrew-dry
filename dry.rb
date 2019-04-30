DRY_VERSION= "v0.9-beta.10".freeze

class Dry < Formula
  desc "a Docker manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  version "v0.9-beta.10"
  if OS.mac?
    sha256 "5144f27deeb9da8cd8fa93a59caf8b200faf8a9e31b0e3e03ff4efb187305ebe"
    url "https://github.com/moncho/dry/releases/download/#{version}/dry-darwin-amd64"
  elsif OS.linux?
    sha256 "a7467648886fb898491f2cafb868c4f928c33a1a252f7e70bfe79986a8f074fb"
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
