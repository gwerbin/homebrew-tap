cask 'i2pd' do
    version '2.15.0'
  sha256 '10054e5b465d33df8a9e92d2fb60b2c1057cc9944edf364aae8d0260250ba548'

  url "https://github.com/PurpleI2P/i2pd/releases/download/#{version}/i2pd_#{version}_osx.tar.gz"
  name 'i2pd'
  homepage 'http://i2pd.website/'

  depends_on 'libressl'
  depends_on 'boost'

  # system('install_name_tool', '-change',
  #        '/usr/local/lib/libcrypto.1.1.dylib',
  #        "#{Formula['libressl']}.opt_prefix/lib/libcrypto.dylib",
  #        'i2pd')
  # system('install_name_tool', '-change',
  #        '/usr/local/lib/libssl.1.1.dylib',
  #        "#{Formula['libressl']}.opt_prefix/lib/libssl.dylib",
  #        'i2pd')
  binary 'i2pd'
end
