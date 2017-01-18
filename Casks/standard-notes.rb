cask 'standard-notes' do
  version '0.1.1'
  sha256 '9b6a96ac9d00687f9fdd1ccd456ce36575228dd3a6b90662e8fe529bee04d955'
  url 'https://github.com/standardnotes/desktop/releases/download/v#{version}/Standard.Notes-Mac-#{version}.dmg'

  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end