# Class: buildtools
#
# Installs packages necessary for building software. This is generally
# done on buildhosts and not to be included on generic nodes
#
class buildtools {

    $packageList = [
        "autoconf",
        "automake",
        "compat-gcc-34",
        "compat-gcc-34-c++",
        "compat-glibc",
        "compat-glibc-headers",
        "cpanspec",
        "curl-devel",
        "expat-devel",
        "gcc",
        "gcc-c++",
        "git",
        "glibc-devel",
        "kernel-devel",
        "kernel-doc",
        "kernel-headers",
        "nasm",
        "net-snmp-devel",
        "net-snmp-utils",
        "openssl-devel",
        "perl-Git",
        "python-cheetah",
        "python-devel",
        "python-setuptools",
        "redhat-rpm-config",
        "rpm-build",
        "subversion",
        "xalan-j2",
        "xmlto",
        "yum-utils",
        "zlib-devel"
    ] # $packageList

    package { $packageList: }

    # writable by systems, since this is where we do most of our business
    File {
        group  => "systems",
        mode   => "775",
        ensure => directory,
    } # File

    file {
        "/usr/local/src":;
        "/usr/local/rpms":;
    } # file
} # class buildtools
