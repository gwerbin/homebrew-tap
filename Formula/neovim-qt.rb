class NeovimQt < Formula
  desc "Neovim client library and GUI, in Qt5"
  homepage "https://github.com/equalsraf/neovim-qt"
  url "https://github.com/equalsraf/neovim-qt/archive/v0.2.3.tar.gz"
  sha256 "2ee4084f7a4503825c2b4bc27b2cb4283533c21012c946900ce4cd0362d1c0e1"
  head "https://github.com/equalsraf/neovim-qt.git"

  depends_on "cmake" => :build
  depends_on "qt5"
  depends_on "neovim"

  def install
    mkdir "build" do
      ohai "Building Neovim-Qt"
      system "cmake", ".."
      system "make"
      prefix.install "bin/nvim-qt.app"
      bin.install_symlink prefix/"nvim-qt.app/Contents/MacOS/nvim-qt"
    end
  end
end
