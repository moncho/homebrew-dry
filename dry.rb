DRY_VERSION= "v0.9-beta.6".freeze

class Dry < Formula
  desc "a Docker manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  version "v0.9-beta.6"
  if OS.mac?
    sha256 "c8e5d93b229753203728cde57c27c204eed809cb009391a7851537b7406de92e"
    url "https://github.com/moncho/dry/releases/download/#{version}/dry-darwin-amd64"
  elsif OS.linux?
    sha256 "c9d81983432ef97cc5b93951f04a10b60947bc5b91532c6a0f9ca049e7c958b8"
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
