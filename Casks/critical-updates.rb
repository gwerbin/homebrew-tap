cask 'critical-updates' do
  version :latest
  sha256 '888dc8bb5e2c63581012a87af2e48660fa65aec385faf4e6eea035bf72bba843'

  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/CriticalUpdates.app.zip'
  name 'Critical Updates'
  homepage 'https://sqwarq.com/critical-updates/'

  app 'CriticalUpdates.app'
end
