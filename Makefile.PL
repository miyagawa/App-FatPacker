use strict;
use warnings FATAL => 'all';
use inc::Module::Install 0.93;

all_from('lib/App/FatPacker.pm');

install_script('bin/fatpack');

resources(
    # r/w: p5sagit@git.shadowcat.co.uk:App-FatPacker.git
    repository => "git://git.shadowcat.co.uk/p5sagit/App-FatPacker.git",
    homepage => 'http://git.shadowcat.co.uk/gitweb/gitweb.cgi?p=p5sagit/App-FatPacker.git',
);

WriteAll;
