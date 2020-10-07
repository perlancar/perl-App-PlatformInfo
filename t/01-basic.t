#!perl

use strict;
use warnings;
use FindBin '$Bin';
use Test::More 0.98;

use IPC::System::Options 'backtick';

# basically we just want to collect output of platform-info scripts on various
# testing machines
diag "Output of platform-info: ", backtick({shell=>0}, $^X, "$Bin/../script/platform-info");

ok 1;

done_testing;
