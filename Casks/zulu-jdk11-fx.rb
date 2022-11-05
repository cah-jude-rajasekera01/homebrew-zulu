cask 'zulu-jdk11-fx' do

  if Hardware::CPU.intel?
    version '11.60.19,11.0.17'
    sha256 'b1b3380b2178e41129d6cbd0d50b69b9cf77bc97a1d0ec3afff8bfd08c07be6f'

    url 'https://cdn.azul.com/zulu/bin/zulu11.60.19-ca-fx-jdk11.0.17-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '11.60.19,11.0.17'
    sha256 '4077ab6b23251cbff7d7963cca9aef995f2d4ce86ea7818602058bf1e87d9987'

    url 'https://cdn.azul.com/zulu/bin/zulu11.60.19-ca-fx-jdk11.0.17-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK FX 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
