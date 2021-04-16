#
# Cookbook:: abby-cookbook
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

include_recipe 'java'

tomcat_install 'dirworld' do
  version '8.5.54'
  dir_mode '0755'
  tarball_uri 'http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.tar.gz'
  create_symlink false
end

tomcat_service 'helloworld' do
  action [:enable, :start]
  env_vars [{ 'CATALINA_BASE' => '/opt/tomcat_helloworld/' }, { 'CATALINA_PID' => '/opt/tomcat_helloworld/bin/tomcat.pid' }]
end

