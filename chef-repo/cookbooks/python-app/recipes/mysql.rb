#install mysql
#
mysql_service 'default' do
  version '5.7'
  initial_root_password 'root'
  action [:create, :start]
end
