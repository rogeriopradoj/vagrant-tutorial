# Installs the latest version of PHPMD

include_recipe "php::pear"

channels = [
    "pear.pdepend.org"
]

channels.each do |chan|
  php_pear_channel chan do
    action :discover
  end
end

pu = php_pear_channel "pear.phpmd.org" do
  action :discover
end

php_pear "PHP_PMD" do
  preferred_state "stable"
  channel pu.channel_name
  action :install
end
