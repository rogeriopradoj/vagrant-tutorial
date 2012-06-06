# package value_for_platform(["centos", "redhat", "fedora", "suse"] => { "default" => "php53u-pear" }, "default" => "php-pear") do
#   action :upgrade
# end
# 
execute "upgrade-pear-with-pear" do
  command "pear upgrade pear | cat" # piping through cat appears to be the only sane way of stopping pear returning exit code 1 on no upgrade
end


# php_pear "pear" do
#   action :upgrade
# end
