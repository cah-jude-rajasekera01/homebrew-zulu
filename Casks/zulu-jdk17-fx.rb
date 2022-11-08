cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.38.21,17.0.5'
    sha256 'da720e89bbb6a5881d80f9fccfea4232dbfb51789ca5df3c16ab7e385282e1a1'

    url 'https://cdn.azul.com/zulu/bin/zulu17.38.21-ca-fx-jdk17.0.5-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.38.21,17.0.5'
    sha256 '477aa9577c8c623dc3f93b484bf14350e36eef4685d121165d792e73a04acf95'

    url 'https://cdn.azul.com/zulu/bin/zulu17.38.21-ca-fx-jdk17.0.5-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
