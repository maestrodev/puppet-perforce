class perforce::client(
  $version = '15.1'
) {

  wget::fetch { 'p4':
    source      => "http://cdist2.perforce.com/perforce/r${version}/bin.linux26x86_64/p4",
    destination => '/usr/bin/p4',
  } ->
  file { '/usr/bin/p4':
    mode => '0755',
  }

}
