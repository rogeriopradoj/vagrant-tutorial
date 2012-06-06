include_recipe "php::pear"

php_pear "PhpDocumentor" do
  action :install
end