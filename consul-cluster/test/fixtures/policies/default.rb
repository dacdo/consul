name 'consul-cluster'
run_list 'consul-cluster::default'
default_source :community
cookbook 'consul-cluster', path: File.expand_path('../../../..', __FILE__)

override['consul']['config']['bootstrap_expect'] = 1
