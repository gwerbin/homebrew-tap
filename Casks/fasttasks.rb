cask 'fasttasks' do
  version :latest
  sha256 '143c32e07e7cfd74e1075bf81b0a79c8b4261f0fe3b9f3cc0c4baf299969d3ba'

  url 'https://s3.amazonaws.com/sqwarq.com/PublicZips/FT2.app.zip'
  name 'FastTasks 2'
  homepage 'https://sqwarq.com/fasttasks-2/'

  app 'FastTasks 2.app'

  zap delete: ['~/Library/Application Support/FastTasks 2']
end
