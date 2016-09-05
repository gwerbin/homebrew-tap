class NeovimQt < Formula
  desc "Neovim client library and GUI, in Qt5"
  homepage "https://github.com/equalsraf/neovim-qt"
  url "https://github.com/equalsraf/neovim-qt/archive/v0.2.2.tar.gz"
  sha256 "9b983a1c241a84d8adb3003272100970f21e78f52032e902e866f13bb82c015f"
  head "https://github.com/equalsraf/neovim-qt.git"

  depends_on "cmake" => :build
  depends_on "qt5"
  depends_on "neovim"

  def install
    mkdir "build" do
      ohai "Building Neovim-Qt"
      system "cmake", ".."
      system "make"
      bin.install "bin/nvim-qt"
    end
  end
end
