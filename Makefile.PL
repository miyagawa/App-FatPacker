use strict;
use warnings FATAL => 'all';
use inc::Module::Install 0.93;

all_from('lib/App/FatPacker.pm');

install_script('bin/fatpack');

WriteAll;
