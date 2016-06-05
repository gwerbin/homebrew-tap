class NeovimQt < Formula
  desc "Neovim client library and GUI, in Qt5"
  homepage "https://github.com/equalsraf/neovim-qt"
  url "https://github.com/equalsraf/neovim-qt/archive/v0.2.0.tar.gz"
  sha256 "80d736af866345852618113caf935021f4e29bba81c8de0f1cb4f61829fbf366"
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
