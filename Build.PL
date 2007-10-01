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
    },
    add_to_cleanup      => [ 'Hash-Slice-*' ],
);

$builder->create_build_script();
