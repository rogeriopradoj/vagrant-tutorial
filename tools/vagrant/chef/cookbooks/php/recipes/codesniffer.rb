include_recipe "php::pear"

php_pear "PHP_CodeSniffer" do
  action :install
end