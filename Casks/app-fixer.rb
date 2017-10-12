cask 'AppFixer' do
  version :latest
  sha256 '10054e5b465d33df8a9e92d2fb60b2c1057cc9944edf364aae8d0260250ba548'

  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/AppFixer.app.zip'
  name 'App Fixer'
  homepage 'https://sqwarq.com/appfixer/'

  app 'AppFixer.app'
end
