#
# Cookbook Name:: my_consul
# Recipe:: configure

%w{ /app /app/consul /app/consul/bin /app/consul/conf.d /app/consul/conf.d/bootstrap /app/consul/conf.d/server /app/consul/conf.d/ssl /app/consul/pkg /app/consul/rel /app/consul/rel/consul_1.2.2_linux_amd64 /app/consul/rel/consul_1.2.2_linux_amd64/consul /data /data/consul}.each do |d|
  directory d do
    owner node['consul']['service_user']
    group node['consul']['service_group']
    mode '0755'
    action :create
  end
end

if node['my_consul']['server']
  cookbook_file '/app/consul/conf.d/server/consul.json' do
    owner node['consul']['service_user']
    group node['consul']['service_group']
    mode '0644'
    source 'server_consul.json'
  end
else
  cookbook_file '/app/consul/conf.d/server/consul.json' do
    owner node['consul']['service_user']
    group node['consul']['service_group']
    mode '0644'
    source 'client_consul.json'
  end
end

link '/app/consul/conf.d/consul.json' do
  to '/app/consul/conf.d/server/consul.json'
  action :create
end

package 'tree' do
  action :install
end

# service 'consul' do
#   action :stop
# end

service 'consul' do
  action :restart
end
