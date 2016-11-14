class PurpleFacebook < Formula
  desc "Facebook protocol plugin for libpurple"
  homepage "https://github.com/dequis/purple-facebook"
  url "https://github.com/dequis/purple-facebook/releases/download/66ee77378d82/purple-facebook-66ee77378d82.tar.gz"
  version "66ee77378d"
  sha256 "bc4420bc46295700af42c2e35adda210ab62ebb8bf9808adc2baba94205d6454"

  depends_on "pidgin"
  depends_on "glib" => :build
  depends_on "json-glib" => :build

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
