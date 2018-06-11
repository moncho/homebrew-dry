DRY_VERSION= "v0.9-beta.3".freeze

class Dry < Formula
  desc "docker container and swarm manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  version "v0.9-beta.3"
  url "https://github.com/moncho/dry/releases/download/#{version}/dry-#{OS::NAME}-amd64"
  if OS.mac?
    sha256 "1b54f44dfd31357fa7e7a7b20e287060c0f3f33ef1341af482798e159dece852"
  elsif OS.linux?
    sha256 "97818c8a662992d73e88ad9823175ab680f5fbbbaf156c5ece19a7ac884000fb"
  end

  def install
    mv "dry-#{OS::NAME}-amd64", "dry"
    bin.install "dry"
  end
  test do
    system "#{bin}/dry", "--version"
  end
end
