class PurpleFacebook < Formula
  desc "Facebook protocol plugin for libpurple"
  homepage "https://github.com/dequis/purple-facebook"
  url "https://github.com/dequis/purple-facebook/releases/download/v0.9.5-9ff9acf9fa14/purple-facebook-0.9.5-9ff9acf9fa14.tar.gz"
  sha256 "7ab652dd0430166465f820e6e72bf6fffe09db936b535c212e571ec1742146dc"
  version "0.9.5-9ff9acf9fa14"
  version_scheme 1

  depends_on "pidgin"
  depends_on "glib" => :build
  depends_on "json-glib" => :build

  def install
    ohai "testing"
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
  end
end
