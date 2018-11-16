name 'consul-ng'
run_list "recipe[consul-ng::default]"
cookbook "consul-ng", path: "."
default_source :supermarket
