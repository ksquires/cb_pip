#
# Cookbook:: pip
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# require 'chefspec'
require 'spec_helper'

describe 'pip::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'centos', version: '7.3.1611').converge(described_recipe) }

  it 'installs python2-pip' do
    expect(chef_run).to install_package('python2-pip')
  end
end
