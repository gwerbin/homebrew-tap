class GitDiffview < Formula
  desc "A bash script to show the changes between two git paths as a treeview."
  homepage "https://github.com/opicbernard/git-diffview"
  url "https://github.com/opicbernard/git-diffview"
  head "https://github.com/opicbernard/git-diffview.git"

  depends_on "tree"

  def install
      bin.install "git-diffview"
      (bin/"git-diffview").chmod 0755
  end
end
