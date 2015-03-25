include_attribute "varnish"

default['varnish']['storage_size'] = '1G'
default['varnish']['user'] = 'varnish'
default['varnish']['group'] = 'varnish'
default['varnish']['version'] = "3.0"
default['varnish']['listen_port'] = 80
default['varnish']['admin_listen_address'] = node['opsworks']['layers']['varnish']['instances']['baklava']['private_ip']


default['varnish']['backend_host'] = node['opsworks']['layers']['php-app']['instances']['lemon-tart']['private_ip']
default['varnish']['backend_port'] = 80
default['varnish']['vcl_cookbook'] = "drupal_varnish"
default['varnish']['max_connections'] = 250
default['varnish']['connect_timeout'] = "300s"
default['varnish']['first_byte_timeout'] = "300s"
default['varnish']['between_bytes_timeout'] = "300s"
