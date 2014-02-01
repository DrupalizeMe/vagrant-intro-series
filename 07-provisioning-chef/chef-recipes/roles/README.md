# Chef Roles

Roles are a way to define server types. You may have many nodes with the same role 
(e.g. multiple VMs with the role of "Web server").  A single node may have multiple 
roles (e.g. a Web server and a database server).

Sample roles might include:

- Web Server (with or without a database)
- Database Server
- Drupal Web Server (Web server with additional libraries / packages for Drupal)

Role files should be in either Role Ruby DSL (.rb) or JSON (.json).

Sample File: `base_example.rb`:

Contents:

    ````name "base_example"
    description "Example base role applied to all nodes."
    # List of recipes and roles to apply. Requires Chef 0.8, earlier versions use 'recipes()'.
    #run_list()
    # Attributes applied if the node doesn't have it set already.
    #default_attributes()
    # Attributes applied no matter what the node has set already.
    #override_attributes()````
