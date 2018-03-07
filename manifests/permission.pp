class javapackage::permission
(
$location = $javapackage::location,
$mode = $javapackage::mode,
$grp = $javapackage::grp,
$usr = $javapackage::usr,
)
{
file { $location :
ensure => 'present',
path => $location,
mode => $mode,
group => $grp,
owner => $usr,
}
}
