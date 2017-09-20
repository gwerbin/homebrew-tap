class Miniconda3 < Formula
  desc "Continuum Analytics Miniconda"
  homepage "https://www.anaconda.com/what-is-anaconda/"
  head "https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh"
  sha256 ""

  #conflicts_with "python3", :because => "both install `python3` binaries"
  keg_only "fragile_installation"
  bottle :unneeded

  def install
    system "sh", "Miniconda3-latest-MacOSX-x86_64.sh", "-b", "-f", "-p", "#{prefix}"

    # Prevent third-party packages from building against fragile Cellar paths
    # See also: homebrew/homebrew-core/python3
    inreplace Dir[lib/"**/_sysconfigdata_m_darwin_darwin.py",
                  lib/"config*/Makefile",
                  lib/"pkgconfig/python-3.?.pc"],
              prefix, opt_prefix
  end

  test do
  end

end
