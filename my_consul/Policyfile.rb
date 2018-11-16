name 'my_consul'
run_list "recipe[my_consul::default]"
cookbook "my_consul", path: "."
cookbook 'consul', '>= 3.1.0', path: "../consul"
default_source :supermarket
