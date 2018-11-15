name 'consul'
run_list "recipe[consul::default]"
cookbook "consul", path: "."
default_source :supermarket