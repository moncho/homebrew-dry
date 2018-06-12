DRY_VERSION= "v0.9-beta.4".freeze

class Dry < Formula
  desc "a Docker manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  version "v0.9-beta.4"
  if OS.mac?
    sha256 "88ac3c6b27a36fabe36f60ac66fbec97932ae7824f1a8ecc82f3ebc25866206f"
    url "https://github.com/moncho/dry/releases/download/#{version}/dry-darwin-amd64"
  elsif OS.linux?
    sha256 "9f0a884ea8570295117c4ae0092d1c5025b39ea06c98d9e4f904524d95e94a68"
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
