cask 'drill-odbc' do
  version ''
  sha256 ''

  url 'https://package.mapr.com/tools/MapR-ODBC/MapR_Drill/MapRDrill_odbc_v1.2.1.1000/MapRDrillODBC.dmg'
  name 'MapR Drill ODBC'
  homepage 'https://mapr.com'

  pkg 'MapRDrillODBC.pkg'
  uninstall pkgutil: 'mapr.drillodbc'
  zap delete: '/opt/mapr/drillodbc/ErrorMessages'
  zap delete: '/opt/mapr/drillodbc/Setup'
  zap delete: '/opt/mapr/drillodbc/lib/universal'
end
