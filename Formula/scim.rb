class Scim < Formula
  desc "Ncurses spreadsheet program for terminal"
  homepage "https://github.com/andmarti1424/sc-im"
  url "https://github.com/andmarti1424/sc-im/archive/v0.3.0.tar.gz"
  sha256 "d721e8fb850ebe3c590311ab14e37e92b3340a19e41cdfd67798fdcfac6fae3b"

  depends_on :gcc => :build
  depends_on "ncurses" => :build

  def install
    ENV.prepend_path "LDFLAGS", Formula["ncurses"].opt_lib
    ENV.prepend_path "CPPFLAGS", Formula["ncurses"].opt_include
    ENV.prepend_path "PKG_CONFIG_PATH", "#{Formula["ncurses"].opt_lib}/pkgconfig"

    # do not enable XLS/XLSX support here because "libxlsreader" isn't
    # available on Homebrew
    Dir.chdir("src") do
      make_args = %W[
        CC=gcc
        prefix=#{HOMEBREW_PREFIX}
        LINUX=
        MACOSX=-DMACOSX
      ]
      system "make", *make_args
    end

    bin.install "scim"
    doc.install "scim_help"
    man1.install "scim.1"
  end

  test do
    system "{#bin}/scim", "--version"
  end
end