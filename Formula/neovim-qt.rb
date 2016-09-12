class NeovimQt < Formula
  desc "Neovim client library and GUI, in Qt5"
  homepage "https://github.com/equalsraf/neovim-qt"
  url "https://github.com/equalsraf/neovim-qt/archive/v0.2.2.tar.gz"
  sha256 "f8e29b9f1ef3df4e3603238b8e5bb9206a95c54f949af187101c56777a15763b"
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
