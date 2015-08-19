#/etc/puppet/modules/asful/manifests/init.pp

class asful (
  $nodename       = 'ul1-eu-central',
  $nodeip         = '10.91.64.150'

){

  file {
    ["/etc/elasticsearch/config"]:
      ensure => directory,
      mode   => '0755',
      owner  => 'root',
      group  => 'root',    
    }
    
  file {
    "/etc/elasticsearch/config/elasticsearch.yml":
      ensure => file,
      mode   => '0755',
      owner  => 'root',
      group  => 'root',
      content => template('asful/yaml.erb'),
    }
}
