class Sqlcheck < Formula
  desc "Automatically identify anti-patterns in SQL queries"
  homepage "https://github.com/jarulraj/sqlcheck"
  #url "https://github.com/jarulraj/sqlcheck/archive/1.1.tar.gz"
  url "https://github.com/jarulraj/sqlcheck.git",
    :using => :git,
    :tag => "1.1",
    :revision => "ac8a9a53be20bfd6f65bee6b74c077358b943ae6"
  sha256 "6c8d26c8ae79fe49c785ef0bd32210ba3019a9805dd3debb568bd5a95ecb3201"

  depends_on "cmake" => :build

  head do
    url "https://github.com/jarulraj/sqlcheck.git"
  end

  def install
    system "./bootstrap"
    Dir.chdir "build" do
      # Don't need to pass "-DCMAKE_BUILD_TYPE=RELEASE" because it's in std_cmake_args
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make", "install"
    end
  end

  test do
    IO.popen("sqlcheck") do |f|
      f.puts "select * from tbl as t;"
      f.gets
    end
  end
end
