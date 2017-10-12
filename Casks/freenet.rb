# TODO: zap stanza, appcast
cask 'Freenet' do
  version '2.1.0'
  sha256 '13c20619813d349a517906096068c6f0986ef6c36295bc7f4da3535022ce4e94'

  url "https://github.com/freenet/mactray/releases/download/v#{version}/FreenetTray_#{version}.zip"
  appcast 'https://github.com/freenet/mactray/releases.atom',
          checkpoint: 'bd09926eff3a42504ba80df66cc3da9ce50bd4f2916b6dc09fb6dbc16d0a4205'
  name 'Freenet'
  homepage 'https://freenetproject.org'

  app 'FreenetTray.app'

  caveats 'This program is just the "Tray Application". Freenet itself must'\
         ' be installed and uninstalled from the FreenetTray application'
end
