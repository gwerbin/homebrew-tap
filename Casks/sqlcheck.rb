cask 'sqlcheck' do
  version '1.0.5'
  sha256 '9cf912cba3051f16c57d9e65fc13b06b7140849d75f0bcacf666ba30d3fcb2ff'

  url 'https://github.com/jarulraj/sqlcheck/releases/download/v1.0.5/SQLCheck-1.0.5-x86_64.dmg'
  name 'SQLCheck'
  homepage 'https://github.com/jarulraj/sqlcheck'

  binary 'bin/sqlcheck'
  artifact 'bin/libsqlcheck_library.a', target: '/usr/local/lib/libsqlcheck_library.a'
end
