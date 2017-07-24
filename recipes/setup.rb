package 'vim-enhanced'
package 'emacs'
package 'nano'

package 'tree' do
 action :install
end

package 'ntp' do
 action :install
end

package 'git' do
 action :install
end

#file '/etc/motd' do
# content 'This is the property of Raju'
# owner 'root'
# group 'root'
#end

file '/etc/motd' do
 content "This is the property of Raju
 HOSTNAME: #{node['hostname']}
 IPADDRESS: #{node['ipaddress']}
 CPU: #{node['cpu']['0']['mhz']}
 MEMORY: #{node['memory']['total']}
 "
 owner 'root'
 group 'root'
end

