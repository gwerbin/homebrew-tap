# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class DrakonEditor < Formula
  desc ""
  homepage "http://drakon-editor.sourceforge.net/"
  url "sourceforge.net/projects/drakon-editor/files/drakon_editor1.27.zip/"
  version "1.27"
  sha256 "44b05faa0c8b81afc4cd8ae92ab0277fa47415a96a5f8a6ab12e1c9006f42a14"

  depends_on :homebrew/dupes/tcl-tk # if your formula requires any X11/XQuartz components

  def install
      # TODO
  end

  test do
      # TODO
  end
end
