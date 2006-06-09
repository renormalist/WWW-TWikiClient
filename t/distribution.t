#! /usr/bin/perl

use strict;
use Test::More;

if ($ENV{TEST_DIST}) {
  eval "use Test::Distribution";
  plan skip_all => "Test::Distribution required for checking distribution" if $@;
} else {
  print STDERR 
  plan skip_all => 'Test::Distribution skipped. Set TEST_DIST to enable this test.';
}
