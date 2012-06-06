
# Needed for phpize, which pecl needs
include_recipe "php::module_dev"

# php_pear "xdebug" do
#   action :install
# end

if platform?(%w{debian ubuntu})
    package "php5-xdebug"

    template "#{node['php']['ext_conf_dir']}/xdebug.ini" do
      mode "0644"
    end
elsif platform?(%w{centos redhat fedora})
    package "php53u-pecl-xdebug"
end



