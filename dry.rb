require "language/go"

DRY_VERSION= "0.6-alpha.1".freeze
DRY_COMMIT="37d40702a63cc154892ab0ca6e6ea6061a70fcd4".freeze

class Dry < Formula
  desc "docker container manager for the terminal"
  homepage "https://moncho.github.io/dry/"
  url "https://github.com/moncho/dry/archive/v" << DRY_VERSION << ".tar.gz"
  sha256 "af57db73b7b13fa665c2301c2d3d32cc695dcf0fc753261789b6baa6e9740600"
  head "https://github.com/moncho/dry.git"
  version DRY_VERSION

  depends_on "go" => :build

  go_resource "github.com/moncho/dry" do
    url "https://github.com/moncho/dry.git",
    :revision => DRY_COMMIT
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
    mkdir_p buildpath/"src/github.com/moncho/dry"
    ln_s buildpath, buildpath/"src/github.com/moncho/dry"
    Language::Go.stage_deps resources, buildpath/"src"

    system "go build -o dry -a -ldflags \"-w -X github.com/moncho/dry/version.GITCOMMIT=#{DRY_COMMIT} -X github.com/moncho/dry/version.VERSION=#{DRY_VERSION} -extldflags -static\" ."

    bin.install "dry"
  end

  test do
    system "#{bin}/dry", "--version"
  end
end
