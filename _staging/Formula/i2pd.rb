class I2pd < Formula
  desc "Full-featured C++ implementation of I2P client."
  homepage "http://i2pd.website/"

  url "https://github.com/PurpleI2P/i2pd/archive/2.15.0.tar.gz"
  sha256 "87649a1963b1d1b8f9424c0bccbdf6bbde0bb87db8dcf0b5c61f4c7f13181b86"
  head "https://github.com/PurpleI2P/i2pd.git"

  depends_on "libressl"
  depends_on "boost"

  def install
    system("make", "HOMEBREW=1",
           "BREWROOT=#{HOMEBREW_PREFIX}",
           "BOOSTROOT=#{Formula["boost"].opt_prefix}",
           "SSLROOT=#{Formula["libressl"].opt_prefix}")

    bin.install "i2pd"
  end

  test do
    system "#{bin}/i2pd", "--help"
  end
end
