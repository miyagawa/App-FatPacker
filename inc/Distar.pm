package        # in case this escapes being no_index'ed in META.yml
  inc::Distar; # this horrible little trick hides us from PAUSE. INVISIBUL!

use strict;
use warnings FATAL => 'all';

my $already;

my $AUTHOR;

my @do;

my %whoami;

sub import {
  die "Can't call import() twice, last called from: ${already}"
    if $already;
  $already = join(' ', caller);
  strict->import;
  warnings->import(FATAL => 'all');
  my $class = shift;
  if (-e 'inc/whoami.pm') {
    %whoami = %{do 'inc/whoami.pm' or die "Failed to eval inc/whoami.pm: $@"};
  } else {
    $AUTHOR = 1;
    require inc::Distar::Guesswork;
    %whoami = %{inc::Distar::Guesswork::guess(@_)};
  }
  push @do, sub {
    require ExtUtils::MakeMaker;
    ExtUtils::MakeMaker::WriteMakefile(%whoami)
  };
}

END {
  foreach my $do (@do) { $do->() }
}

1;
