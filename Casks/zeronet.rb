# TODO: zap stanza, appcast
cask 'Zeronet' do
  version :latest
  sha256 '5839c5896a6d3f7d8e272c9c04e39a9f81848d257e51b7c668046b15e9bbb3b5'

  url 'https://github.com/HelloZeroNet/ZeroNet-mac/archive/dist/ZeroNet-mac.zip'
  name 'Zeronet'
  homepage 'https://zeronet.io/'

  app 'ZeroNet.app'
end
