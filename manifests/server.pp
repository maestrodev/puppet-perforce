class perforce::server($user = 'perforce') {

  File {
    owner => $user,
    group => $user,
  }

  Exec { path => "/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/bin" }

  user { $user:
    ensure     => present,
    home       => '/var/local/perforce',
    managehome => true,
    system     => true,
  } ->

  wget::fetch { 'p4d':
    source      => 'http://www.perforce.com/downloads/perforce/r12.1/bin.linux26x86_64/p4d',
    destination => '/usr/bin',
  } ->
  file { '/usr/bin/p4d':
    mode => '0755',
  } ->
  file { '/var/local/p4root':
    ensure => directory,
  } ->
  exec { 'p4d -r /var/local/p4root':
    unless => 'pidof p4d',
  }

}
