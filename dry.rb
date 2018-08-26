DRY_VERSION= "v0.9-beta.7".freeze

class Dry < Formula
  desc "a Docker manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  version "v0.9-beta.7"
  if OS.mac?
    sha256 "d5442d52db572428954c339784e9c339ffd3b4dafe8bdc2a49f39f7637a7a0f6"
    url "https://github.com/moncho/dry/releases/download/#{version}/dry-darwin-amd64"
  elsif OS.linux?
    sha256 "807f486a8058d5c70f778b0fa53c94ebbd8b23d4c5c8b59af86307e92e249331"
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
