use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Hash::Slice',
    license             => 'perl',
    dist_author         => 'Robert Krimen <rkrimen@cpan.org>',
    dist_version_from   => 'lib/Hash/Slice.pm',
    build_requires => {
        'Test::More' => 0,
        'Test::Deep' => 0,
        
    },
    requires => {
        Carp => 0,
    },
    recommends => {
        Clone => 0,
        Storable => 0,
    },
    add_to_cleanup      => [ 'Hash-Slice-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
