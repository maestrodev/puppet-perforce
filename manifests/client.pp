class perforce::client() {

  wget::fetch { 'p4':
    source      => 'http://cdist2.perforce.com/perforce/r14.1/bin.linux26x86_64/p4',
    destination => '/usr/bin',
  } ->
  file { '/usr/bin/p4':
    mode => '0755',
  }

}
