class GitDiffview < Formula
  desc "Show the changes between two git paths as a treeview."
  homepage "https://github.com/opicbernard/git-diffview"
  head "https://github.com/opicbernard/git-diffview.git"

  depends_on "tree"

  def install
    bin.install "git-diffview"
    (bin/"git-diffview").chmod 0755
  end

  test do
    mkdir "repo"
    cd "repo"
    system "git init"
    # need at least 2 commits for it to work, since
    # the script assumes the presence of a HEAD~ revision.
    system "touch", "foo"
    system "git", "add", "foo"
    system "git", "commit", "-m", "Add 'foo'"
    system "touch", "bar"
    system "git", "add", "bar"
    system "git", "commit", "-m", "Add 'bar'"
    system "touch", "baz"
    system "git", "add", "baz"
    system "git", "commit", "-m", "Add 'baz'"
    stdout, stderr, status = Open3.capture3 "git-diffview"
    # stdout == "bar\ A\nbaz\ A"
    # stderr == ""
    # status == 0 
  end
end
