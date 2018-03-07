class javapackage::user
(
$usr = $javapackage::usr,
$grp = $javapackage::grp,
$path = $javapackage::path,
)
{
user { $usr :
name => $usr,
groups => $grp,
home => $path,
ensure => present,
require => Group[$grp],
}
group { $grp :
  name                 => $grp,
  ensure               => present,
  members              => $usr,
}
file{"${path}/.bash_profile":
    ensure  => file,
    content => template('javapackage/bash_profile.erb'),
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    require => User[$usr],
  }
}
