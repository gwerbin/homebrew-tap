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

        # cmake_args = std_cmake_args + ["-DIconv_INCLUDE_DIRS:PATH=/usr/include",
        #                                "-DIconv_LIBRARIES:PATH=/usr/lib/libiconv.dylib"]
        # system "cmake", "..", *cmake_args
 
        system "cmake", ".."
        system "cmake", "--build", "."
      end
    end
  end
