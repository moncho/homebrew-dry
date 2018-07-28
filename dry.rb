DRY_VERSION= "v0.9-beta.5".freeze

class Dry < Formula
  desc "a Docker manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  version "v0.9-beta.5"
  if OS.mac?
    sha256 "cb2eac99ea7cc9221201aecb49ddc4bba7278d489bd039f315f146e3dc8d5640"
    url "https://github.com/moncho/dry/releases/download/#{version}/dry-darwin-amd64"
  elsif OS.linux?
    sha256 "29a6db9146f29916e05be9a73a4b4e87c933602505788c4a00de7a6a778c31e8"
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
