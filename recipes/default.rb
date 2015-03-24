# vim set ft=ruby
# Cookbook Name:: drupal-varnish
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "varnish"

execute "set-varnish-secret" do
  command "echo '#{node['opsworks']['layers']['varnish']['secret']}' > #{node['varnish']['secret_file']}"
  notifies :reload, 'service[varnish]', :immediately
end
