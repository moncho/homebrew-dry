DRY_VERSION= "v0.10-beta.1".freeze

class Dry < Formula
  desc "a Docker manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  version "v0.10-beta.1"
  if OS.mac?
    sha256 "94e499a3a2e085e2b2fcc3dc2522a820161fb55b01b565ee51b88c21681b18c3"
    url "https://github.com/moncho/dry/releases/download/#{version}/dry-darwin-amd64"
  elsif OS.linux?
    sha256 "e2865e54d5ff825b2a2b5f52b8271d86fd51eff868dd8a7cf3a7b81fa854a660"
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
