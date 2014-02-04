name "lamp_stack"
description "Configure AMP stack with: php5.3, apache2 with mod_php, and MySQL."
run_list(
  "recipe[apt]",
  "recipe[php]",
  "recipe[apache2]",
  "recipe[apache2::mod_expires]",
  "recipe[apache2::mod_php5]",
  "recipe[apache2::mod_rewrite]",
  "recipe[mysql::server]",
  "recipe[php::module_mysql]",
)
default_attributes(
  :php5 => {
    :max_execution_time => "60",
    :memory_limit => "256M",
  },
  
  :apache => {
    :listen_ports => [ "80", "443" ],
    :keepaliverequests => 10,
    :prefork => {
      :startservers => 2,
      :minspareservers => 1,
      :maxspareservers => 3,
      :serverlimit => 4,
      :maxclients => 4,
      :maxrequestsperchild => 1000,
    },
    :worker => {
      :startservers => 2,
      :maxclients => 128,
      :minsparethreads => 16,
      :maxsparethreads => 128,
      :threadsperchild => 16,
      :maxrequestsperchild => 0,
    },
  },

  :mysql => {
    :bind_address => "127.0.0.1",
    :tunable => {
      :key_buffer => "384M",
      :table_cache => "4096",
    },
  },
)
