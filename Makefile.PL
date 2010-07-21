use strict;
use warnings FATAL => 'all';
use inc::Module::Install 0.93;

all_from('lib/App/FatPacker.pm');

requires 'File::Path' => 2.07; # required for make_path/remove_tree

install_script('bin/fatpack');

WriteAll;
