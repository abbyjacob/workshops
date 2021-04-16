#install apache 

package 'httpd'
service 'httpd' do
action [:enable, :start]
end

file '/var/www/html/index.html' do
content 'Chef node test'
end

