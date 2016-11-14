class Scim < Formula
  desc "Ncurses spreadsheet program for terminal"
  homepage "https://github.com/andmarti1424/sc-im"
  url "https://github.com/andmarti1424/sc-im/archive/v0.3.0.tar.gz"
  sha256 "09a4f44094c98aa59961c1235e134f12c84672d873f7fe0229aeee4ef256464f"

  depends_on "ncurses" => :build

  def install
    ENV.prepend_path "LDFLAGS", Formula["ncurses"].opt_lib
    ENV.prepend_path "CPPFLAGS", Formula["ncurses"].opt_include
    ENV.prepend_path "PKG_CONFIG_PATH", "#{Formula["ncurses"].opt_lib}/pkgconfig"

    # do not enable XLS/XLSX support here because "libxlsreader" isn't
    # available on Homebrew
    make_args = %W[
      CC=#{ENV.cc}
      prefix=#{HOMEBREW_PREFIX}
      LINUX=
      MACOSX=-DMACOSX
    ]
    system "make", *make_args

    bin.install "scim"
    doc.install "scim_help"
    man1.install "scim.1"
  end

  test do
    system "{#bin}/scim", "--version"
  end
end
