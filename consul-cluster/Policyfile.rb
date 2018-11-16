name 'consul-cluster'
run_list "recipe[consul-cluster::default]"
cookbook "consul-cluster", path: "."
default_source :supermarket
