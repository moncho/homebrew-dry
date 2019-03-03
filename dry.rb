DRY_VERSION= "v0.9-beta.9".freeze

class Dry < Formula
  desc "a Docker manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  version "v0.9-beta.9"
  if OS.mac?
    sha256 "013aeb0123632605f03374f3ffbb708d90b9f0881719ffd231b3ed2e2358e204"
    url "https://github.com/moncho/dry/releases/download/#{version}/dry-darwin-amd64"
  elsif OS.linux?
    sha256 "556b680f2e7680b91901b6562670f616917cda0a5fb1b0c72c39e5fa63852dad"
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
