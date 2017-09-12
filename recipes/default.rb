#
# Cookbook:: pip
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
include_recipe 'my_yum_epel::default'

include_recipe 'pip::install_pip'

execute 'update_pip' do
  command '/usr/bin/pip install --upgrade pip'
end
