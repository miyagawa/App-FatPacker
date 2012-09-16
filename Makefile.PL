use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

(do 'maint/Makefile.PL.include' or die $@) unless -f 'META.yml';

WriteMakefile(
  NAME => 'App::FatPacker',
  VERSION_FROM => 'lib/App/FatPacker.pm',

  META_ADD => {
    resources => {
      # r/w: p5sagit@git.shadowcat.co.uk:App-FatPacker.git
      repository => "git://git.shadowcat.co.uk/p5sagit/App-FatPacker.git",
      homepage => 'http://git.shadowcat.co.uk/gitweb/gitweb.cgi?p=p5sagit/App-FatPacker.git',
    },
  },
);
