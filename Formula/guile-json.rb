class GuileJson < Formula
  desc "JSON module for Guile"
  homepage "https://github.com/aconchillo/guile-json"
  url "http://download.savannah.gnu.org/releases/guile-json/guile-json-0.6.0.tar.gz"
  sha256 "ec51c039ffce91f61df782f829db3c616f645cba74ff365d493cb2b7e879b2e2  guile-json-0.6.0.tar.gz"

  head do
    url "https://github.com/aconchillo/guile-json.git"
  end

  depends_on "autoconf" => :build
  depends_on "automake" => :build

  depends_on "guile"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    # borrowed from the example in README.org
    testfile = testpath/"json.scm"
    testfile.write <<-EOS.undent
    (use-modules (json))
    (display (scm->json '(1 2 3)))
    (newline)
    EOS

    ENV["GUILE_AUTO_COMPILE"] = "0"

    system bin/"guile", testfile
  end
end
