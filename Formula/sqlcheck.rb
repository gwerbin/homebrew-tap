class Sqlcheck < Formula
  desc "Automatically identify anti-patterns in SQL queries"
  homepage "https://github.com/jarulraj/sqlcheck"
  # url "https://github.com/jarulraj/sqlcheck/archive/1.1.tar.gz"
  url "https://github.com/jarulraj/sqlcheck.git",
    :using => :git,
    :tag => "1.1",
    :revision => "ac8a9a53be20bfd6f65bee6b74c077358b943ae6"
  sha256 "6c8d26c8ae79fe49c785ef0bd32210ba3019a9805dd3debb568bd5a95ecb3201"
  head "https://github.com/jarulraj/sqlcheck.git"

  depends_on "cmake" => :build

  def install
    system "./bootstrap"
    Dir.chdir "build" do
      # Don't need to pass "-DCMAKE_BUILD_TYPE=RELEASE" because it's in std_cmake_args
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make", "install"
      mv bin/"libsqlcheck_library.a", lib
    end
  end

  test do
    test_cmd = "sqlcheck"
    test_input = "select * from tbl;"

    test_output = pipe_output test_cmd, test_input, 0
    actual_output = <<"EXPECTED"
  -------------------------------------------------
  > RISK LEVEL    :: ALL ANTI-PATTERNS
  -------------------------------------------------
  ==================== Results ===================

  -------------------------------------------------
  SQL Statement: select * from tbl;
  (HIGH RISK) (QUERY ANTI-PATTERN) SELECT *
  [Matching Expression: select *]


  ==================== Summary ===================
  All Anti-Patterns  :: 1
  >  High Risk   :: 1
  >  Medium Risk :: 0
  >  Low Risk    :: 0
EXPECTED
    assert_equal actual_output.unindent, test_output
  end
end
