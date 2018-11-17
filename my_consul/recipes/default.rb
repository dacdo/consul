#
# Cookbook Name:: my_consul`
# Recipe:: default

#include_recipe 'consul-ng::default'
include_recipe 'consul::default'
include_recipe 'my_consul::configure'
