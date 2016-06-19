require 'formula'
require "language/go"

class Dry < Formula
  desc "A docker container manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/archive/v0.5-alpha.3.tar.gz"
  sha256 "44f361216a124f086eebae0f397b094a89fcf39105f1634bf41f61555518698f"
  head "https://github.com/moncho/dry.git"

  depends_on "go" => :build

  go_resource "github.com/moncho/dry" do
    url "https://github.com/moncho/dry.git",
    :revision => "12acd12c2c9fc24b52758b2805a25147fa9553fa"
  end

  go_resource "github.com/nsf/termbox-go" do
    url "https://github.com/nsf/termbox-go.git",
    :revision => "362329b0aa6447eadd52edd8d660ec1dff470295"
  end

  go_resource "github.com/Sirupsen/logrus" do
    url "https://github.com/Sirupsen/logrus.git",
    :revision => "55eb11d21d2a31a3cc93838241d04800f52e823d"
  end

  go_resource "github.com/jessevdk/go-flags" do
    url "https://github.com/jessevdk/go-flags.git",
    :revision => "fc93116606d0a71d7e9de0ad5734fdb4b8eae834"
  end

  go_resource "github.com/mattn/go-runewidth" do
    url "https://github.com/mattn/go-runewidth.git",
    :revision => "12e0ff74603c9a3209d8bf84f8ab349fe1ad9477"
  end

  def install
    ENV["GOPATH"] = buildpath
    mkdir_p buildpath/"src/github.com/dry"
    ln_s buildpath, buildpath/"src/github.com/dry"
    Language::Go.stage_deps resources, buildpath/"src"
    #system "make", "build"
    system "go", "build", "-o", "dry", "."

    build_version = File.read("APPVERSION").chomp
    bin.install "dry"

  end

  test do
    system "#{bin}/dry", "--version"
  end
end
