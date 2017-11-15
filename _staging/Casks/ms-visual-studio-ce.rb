cask 'ms-visual-studio-ce' do
  version :latest
  sha256 'b7c6f03251e5f81d86c443c47a76ed67c54f53abc96361de8bdaaaff65f7ed4c'

  url 'https://aka.ms/vs/mac/download'
  name 'Microsoft Visual Studio Community Edition'
  homepage 'https://www.visualstudio.com/vs/community/'

  app 'Install Visual Studio for Mac.app'
end
