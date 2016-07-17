class OsxCpuTemp < Formula
  desc "Outputs current CPU temperature for OSX"
  homepage "https://github.com/lavoiesl/osx-cpu-temp"
  head "https://github.com/lavoiesl/osx-cpu-temp.git"

  def install
    system "make"
    bin.install "osx-cpu-temp"
  end
end
