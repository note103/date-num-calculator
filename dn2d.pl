#!/usr/bin/env perl

use strict;
use warnings;
use DateTime;

print "What date?\n";
my $date = <STDIN>;
chomp $date;

if ($date =~ /^(20\d\d)[\/-](\d\d?)[\/-](\d\d?)$/) {
    print "What numbers?\n";
    my $num = <STDIN>;
    chomp $num;

    my $calc1 = DateTime->new(
        year => $1, month => $2, day => $3,
    );
    $calc1->subtract(days => $num);
    print $calc1->ymd.": subtract\n";

    my $calc2 = DateTime->new(
        year => $1, month => $2, day => $3,
    );
    $calc2->add(days => $num);
    print $calc2->ymd.": add\n";

}

