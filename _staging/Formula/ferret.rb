class Ferret < Formula
  desc "Compiles a subset of Clojure to self-contained ISO C++11"
  homepage "https://ferret-lang.org"

  url "https://ferret-lang.org/builds/ferret.jar"
  version "0.3.0"
  sha256 "ff24a2ba87d2a3aaa8aa8409c82acb30a641804250c04be4015c65e2f63c4bf5"

  depends_on :java

  def install
    libexec.install "ferret.jar"
    bin.write_jar_script libexec/"ferret.jar", "ferret"
  end

  test do
    (testpath/"hello.clj").write('(print "Hello, World!\n")')
    system "#{bin}/ferret", "-c", "-i", testpath/"hello.clj"
    shell_output("./a.out", 0)
  end
end
