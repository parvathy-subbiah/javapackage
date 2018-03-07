class javapackage::install
(
$package = $javapackage::package,
)
{
package { $package :
ensure => 'installed',
}






}
