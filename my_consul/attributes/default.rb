#override['consul']['version'] = '1.2.2'
default['consul']['version'] = '1.4.0'

default['consul']['server'] = true
default['consul']['config']['bind_addr'] = node['ipaddress']
default['consul']['config']['advertise_addr'] = node['ipaddress']
default['consul']['config']['advertise_addr_wan'] = node['ipaddress']

default['consul']['service']['config_dir'] = '/app/consul/conf.d'

default['my_consul']['server'] = true
