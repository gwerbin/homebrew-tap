class Solunar < Formula
  desc "Command-line utility for displaying solar and lunar ephemera"
  homepage "http://kevinboone.net/README_solunar.html"
  url "https://github.com/kevinboone/solunar_cmdline/archive/0.1.3b.tar.gz"
  version "0.1.3b"
  sha256 "d9d79726c1aa6ddc7acbc997d41ecd006e4cfaf023ae22ae264178d280624a1d"

  # Fix up the Makefile
  patch :DATA

  def install
    chmod "u+x", "parse_zoneinfo.pl"
    system "make", "VERSION=#{version}", "-f", "Makefile.OSX"
    bin.install "solunar"
  end

  test do
    system "#{bin}/solunar", "-c", "America/New_York"
  end
end

__END__
diff --git a/Makefile.OSX b/Makefile.OSX
index 02b3ff3..ed2e197 100644
--- a/Makefile.OSX
+++ b/Users/symb0lic/Desktop/Makefile.OSX
@@ -7,15 +7,16 @@ VERSION=0.1.2
 
 CFLAGS=-Wall -DVERSION=\"$(VERSION)\" -g 
 
-GCC=gcc
+CC=gcc
 
 OBJS=main.o city.o pointerlist.o error.o latlong.o datetime.o suntimes.o roundutil.o trigutil.o timeutil.o moontimes.o mathutil.o holidays.o astrodays.o nameddays.o solunar.o
 
 solunar: $(OBJS)
-	$(GCC) -o solunar $(OBJS) -lm
+	$(CC) -o $@ $(OBJS) -lm
+	strip -S $@
 
 .c.o:
-	$(GCC) $(CFLAGS) -o $*.o -c $*.c
+	$(CC) $(CFLAGS) -o $*.o -c $*.c
 
 clean:
 	rm -f *.o solunar
