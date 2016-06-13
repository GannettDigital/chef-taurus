#
# Cookbook Name:: taurus

default['java']['jdk_version'] = '7'
default['erlang']['gui_tools'] = false
default['erlang']['install_method'] = 'package'

default['taurus']['jmeter_support'] = true
default['taurus']['locustio_support'] = true
default['taurus']['ab_support'] = true
default['taurus']['siege_support'] = true
default['taurus']['gatling_support'] = true
default['taurus']['tsung_support'] = true

default['taurus']['user'] = 'taurus'
default['taurus']['group'] = 'taurus'
default['taurus']['home'] = '/opt/taurus'
default['taurus']['version'] = '1.6.1'

default['taurus']['settings']['check-updates'] = 'false'
default['taurus']['settings']['check-interval'] = '5s'
default['taurus']['settings']['default-executor'] = 'jmeter'
default['taurus']['settings']['artifacts-dir'] = '/tmp/taurus-%Y-%m-%d_%H-%M-%S.%f'

default['taurus']['package']['list'] = ['python-devel', 'python-pip',
                                        'python-virtualenv', 'libxml2-devel',
                                        'libxslt-devel', 'zlib']

default['taurus']['package']['list_ubuntu'] = ['python-dev', 'python-pip',
                                               'python-virtualenv', 'libxml2-dev',
                                               'libxslt1-dev', 'zlib1g']

default['taurus']['python']['list'] = %w(lxml psutil pyzmq gevent)

# JMeter
default['taurus']['jmeter']['version'] = '2.13' # 3.0
default['taurus']['jmeter']['path'] = "#{node['taurus']['home']}/tools/jmeter"
default['taurus']['jmeter']['mirror_source'] = 'https://archive.apache.org/dist/jmeter/binaries'
default['taurus']['jmeter']['source_url'] = "#{node['taurus']['jmeter']['mirror_source']}/apache-jmeter-#{node['taurus']['jmeter']['version']}.zip"

# JMeter plugins
default['taurus']['jmeter']['plugins']['version'] = '1.4.0'
default['taurus']['jmeter']['plugins']['list'] = %w(Standard Extras ExtrasLibs WebDriver XMPP Hadoop)
default['taurus']['jmeter']['plugins']['mirror_source'] = 'http://jmeter-plugins.org/files'

# LocustIO
default['taurus']['locustio']['version'] = '0.7.5'

# Apache Benchmark
default['taurus']['ab']['package']['list'] = ['httpd-tools']
default['taurus']['ab']['package']['list_ubuntu'] = ['apache2-utils']

# Siege
default['taurus']['siege']['package']['list'] = ['siege']
default['taurus']['siege']['package']['list_ubuntu'] = ['siege']

# Gatling
default['taurus']['gatling']['version'] = '2.1.7'
default['taurus']['gatling']['path'] = "#{node['taurus']['home']}/tools/gatling"
default['taurus']['gatling']['mirror_source'] = "https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/#{node['taurus']['gatling']['version']}"
default['taurus']['gatling']['source_url'] = "#{node['taurus']['gatling']['mirror_source']}/gatling-charts-highcharts-bundle-#{node['taurus']['gatling']['version']}-bundle.zip"

# Tsung
default['taurus']['tsung']['version'] = '1.6.0'
default['taurus']['tsung']['mirror_source'] = 'http://tsung.erlang-projects.org/dist'
default['taurus']['tsung']['source_url'] = "#{node['taurus']['tsung']['mirror_source']}/tsung-#{node['taurus']['tsung']['version']}.tar.gz"
