package App::FatPacker::Trace;

use strict;
use warnings FATAL => 'all';
use B ();

sub import {
  my $open = $_[1] || '>>fatpacker.trace';
  open my $trace, $open
    or die "Couldn't open ${open} to trace to: $!";
  unshift @INC, sub {
    print $trace "$_[1]\n";
  };
  B::minus_c;
}

1;
