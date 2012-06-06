# Installs (or upgrades to) a particular version of PHPUnit.  See
#
# http://www.phpunit.de/manual/current/en/installation.html

include_recipe "php::pear"

channels = [
    "pear.symfony-project.com", 
    "components.ez.no"
]

channels.each do |chan|
  php_pear_channel chan do
    action :discover
  end
end

pu = php_pear_channel "pear.phpunit.de" do
  action :discover
end

# php_pear "PHPUnit" do
#     version "3.5.14"
#     preferred_state "stable"
#     channel pu.channel_name
#     action :install
# end

phpunitCmd = <<CMD
pear install --force --nodeps phpunit/DbUnit-1.0.2 phpunit/File_Iterator-1.2.6 phpunit/PHPUnit_MockObject-1.0.9 phpunit/PHP_CodeBrowser-1.0.0 phpunit/PHP_Timer-1.0.0 phpunit/PHP_TokenStream-1.0.1 phpunit/Text_Template-1.1.0 phpunit/phpcpd-1.3.2 phpunit/phploc-1.6.1 phpunit/PHPUnit_Selenium-1.0.3 phpunit/PHP_CodeCoverage-1.0.4 phpunit/PHPUnit-3.5.14
CMD

execute "istall-PHPUnit-manually-with-pear" do
  command phpunitCmd
  not_if "phpunit --version | grep PHPUnit"
end