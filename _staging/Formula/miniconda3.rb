class Miniconda3 < Formula
  desc "Continuum Analytics Miniconda"
  homepage "https://www.anaconda.com/what-is-anaconda/"
  sha256 "0f12382bbcd89c4141b0ace621813876723b569daa270b77d9c61323d2d5a881"
  head "https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh"

  # conflicts_with "python3", :because => "both install `python3` binaries"
  bottle :unneeded
  keg_only "fragile_installation"

  def install
    system "sh", "Miniconda3-latest-MacOSX-x86_64.sh", "-b", "-f", "-p", prefix

    # Prevent third-party packages from building against fragile Cellar paths
    # See also: homebrew/homebrew-core/python3
    inreplace Dir[lib/"**/_sysconfigdata_m_darwin_darwin.py",
                  lib/"config*/Makefile",
                  lib/"pkgconfig/python-3.?.pc"],
              prefix, opt_prefix
  end

  test do
    system bin/"python", "-c", "python3 -c 'print(1+1)'"
  end
end
