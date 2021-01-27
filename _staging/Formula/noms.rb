class Noms < Formula
  desc "The versioned, forkable, syncable database"
  homepage "https://github.com/attic-labs/noms"
  head "https://s3-us-west-2.amazonaws.com/downloadstable.noms.io/jobs/NomsBuildGoBinaries-v7/4/noms-HEAD-darwin-amd64.tar.gz"

  def install
    bin.install "noms"
    bin.install "nomdex"

    bin.install "counter"
    bin.install "poke"
    bin.install "blob-get"
    bin.install "url-fetch"

    bin.install "csv-analyze"

    bin.install "csv-import"
    bin.install "json-import"
    bin.install "xml-import"

    bin.install "csv-export"
  end

  test do
    system "#{bin}/noms", "version"
  end
end
