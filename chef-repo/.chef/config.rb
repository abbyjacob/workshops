# See http://docs.chef.io/config_rb.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "abbyjacob03"
client_key               "#{current_dir}/abbyjacob03.pem"
chef_server_url          "https://api.chef.io/organizations/chef-abby"
cookbook_path            ["#{current_dir}/../cookbooks"]
