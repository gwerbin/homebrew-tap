class Noms < Formula
  desc "The versioned, forkable, syncable database"
  homepage "https://github.com/attic-labs/noms"
  url "https://s3-us-west-2.amazonaws.com/download.noms.io/jobs/NomsBuildGoBinaries/83/noms-4ae6b16-darwin-amd64.tar.gz"
  version "8.3"
  sha256 "4c63ae5292136cd389abfaefe9008c5670aa2a482ca84ebc5e4b45038d74fa11"

  def install
    bin.install("nomdex")
    bin.install("noms-merge")
    bin.install("noms")

    mv "blob-get", bin/"noms-blob-get"
    mv "counter", bin/"noms-counter"
    mv "csv-analyze", bin/"noms-csv-analyze"
    mv "csv-export", bin/"noms-csv-export"
    mv "csv-import", bin/"noms-csv-import"
    mv "demo-server", bin/"noms-demo-server"
    mv "json-import", bin/"noms-json-import"
    mv "poke", bin/"noms-poke"
    mv "url-fetch", bin/"noms-url-fetch"
    mv "xml-import", bin/"noms-xml-import"
  end

  test do
    system "noms", "version"
  end
end
