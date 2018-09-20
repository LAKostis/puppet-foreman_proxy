# = Foreman Proxy Infoblox DNS plugin
#
# This class installs the Infoblox DNS plugin for Foreman proxy
#
# === Parameters:
#
# $dns_server:: The address of the Infoblox server
#
# $username::   The username of the Infoblox user
#
# $password::   The password of the Infoblox user
#
# $dns_view::   The DNS view on Infoblox server
#
# $infoblox_host:: Host to send API requests if differ from DNS
#
class foreman_proxy::plugin::dns::infoblox (
  String $dns_server = $::foreman_proxy::plugin::dns::infoblox::params::dns_server,
  String $username = $::foreman_proxy::plugin::dns::infoblox::params::username,
  String $password = $::foreman_proxy::plugin::dns::infoblox::params::password,
  Optional[String] $dns_view = $::foreman_proxy::plugin::dns::infoblox::params::dns_view,
  Optional[String] $infoblox_host = $::foreman_proxy::plugin::dns::infoblox::params::infoblox_host,
) inherits foreman_proxy::plugin::dns::infoblox::params {
  foreman_proxy::plugin { 'dns_infoblox':
  }
  -> foreman_proxy::settings_file { 'dns_infoblox':
    module        => false,
    template_path => 'foreman_proxy/plugin/dns_infoblox.yml.erb',
  }
}
