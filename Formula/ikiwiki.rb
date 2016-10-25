# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ikiwiki < Formula
  desc "Ikiwiki is a wiki compiler. It converts wiki pages into HTML pages suitable for publishing on a website."
  homepage "http://ikiwiki.info"
  url "https://github.com/joeyh/ikiwiki/archive/debian/3.20160905.zip"
  version "3.20160905"
  sha256 "3f723170bfa9ad092f544506b5435217a11d4f25a989777897bff9e641395404"

  depends_on :perl

  def install
  end

  test do
  end
end
