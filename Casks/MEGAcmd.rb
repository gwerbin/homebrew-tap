cask 'MEGAcmd' do
  version ''
  sha256 'a33ade1584f0fdabec458c611ef3adfc7d7d0f9cf9a2d334c7147568824f457b'

  url 'https://mega.nz/MEGAcmdSetup.dmg'
  name 'MEGAcmd'
  homepage 'https://mega.nz'

  app 'MEGAcmd.app'
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/MEGAcmdShell"

  zap delete: [ '~/.megaCmd/megacmdserver.log' ]
end
