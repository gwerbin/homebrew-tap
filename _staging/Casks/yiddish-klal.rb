cask 'yiddish-klal' do
  version '1.1'
  sha256 'b39c7a45139846e2e054711868729e71922c6cdcdeaf61f32fdcb8ba2ffd8c9f'

  url 'https://dl.dropboxusercontent.com/u/36713923/Website/Yiddish-Klal-1.1.zip'
  name 'Yiddish Klal'
  homepage 'https://wp.nyu.edu/ibleaman/yiddish/typing/'
  license :gpl

  artifact 'Yiddish Klal 1.1.bundle', target: '/Library/Keyboard Layouts/Yiddish Klal 1.1.bundle/'

  # clear the layout cache before new layouts are recognized
  if MacOS.version >= :mavericks
    postflight do
      File.delete(*Dir.glob('/System/Library/Caches/com.apple.IntlDataCache.le*'))
    end
  end

  uninstall delete: '/Library/Keyboard Layouts/Yiddish Klal 1.1.bundle/'
end
