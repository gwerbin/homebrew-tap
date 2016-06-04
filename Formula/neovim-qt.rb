class NeovimQt < Formula
  desc "Neovim client library and GUI, in Qt5."
  homepage "https://github.com/equalsraf/neovim-qt"

  head do
    url "https://github.com/equalsraf/neovim-qt.git"

    depends_on "cmake" => :build
    depends_on "qt5"
    depends_on "neovim"
  end

    def install
      mkdir "build" do
        ohai "Building Neovim-Qt"
        system "cmake", ".."
        system "make"
	bin.install "bin/nvim-qt"
      end
    end
  end
