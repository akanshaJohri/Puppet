package { 'ntp' :
ensure => installed,
notify => Service['ntpd'],
}
file { '/etc/ntp.conf' :
source => '/etc/ntp1.conf',
notify => Service['ntpd'],
}
service { 'ntpd' :
ensure => running,
enable => true,
}
