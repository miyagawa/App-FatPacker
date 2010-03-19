package inc::Distar::Guesswork;

use strict;
use warnings FATAL => 'all';

use Cwd qw(cwd);
use File::Spec::Functions qw(splitdir catdir catfile);

sub guess {
  my $here = (splitdir cwd)[-1];
  my @parts = split('-', $here);
  my $last = pop @parts;
  {
    NAME => join('::',@parts,$last),
    VERSION_FROM => catfile(catdir('lib', @parts), "${last}.pm"),
  }
}

1;
