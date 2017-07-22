package 'vim-enhanced'
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

file '/etc/motd' do
 content 'This is the property of Raju'
 owner 'root'
 group 'root'
end

