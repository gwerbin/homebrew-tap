class Sqlcheck < Formula
  desc "Automatically identify anti-patterns in SQL queries"
  homepage "https://github.com/jarulraj/sqlcheck"
  url "https://github.com/jarulraj/sqlcheck/archive/1.1.tar.gz"
  sha256 "6c8d26c8ae79fe49c785ef0bd32210ba3019a9805dd3debb568bd5a95ecb3201"

  depends_on "cmake" => :build

  def install
    system "./bootstrap"
    Dir.chdir "build" do
      system "cmake", "..", "-DCMAKE_BUILD_TYPE=RELEASE", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end

  test do
    IO.popen("sqlcheck") do |f|
    end
  end
end
