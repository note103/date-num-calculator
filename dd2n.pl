#!/usr/bin/env perl
use strict;
use warnings;
use DateTime;

print "What date first?\n";
my $date1 = <STDIN>;
chomp $date1;
if ($date1 =~ /^(20\d\d)[\/-](\d\d?)[\/-](\d\d?)$/) {
    my $calc1 = DateTime->new(
        year => $1, month => $2, day => $3,
    );

    print "What date second?\n";
    my $date2 = <STDIN>;
    chomp $date2;
    if ($date2 =~ /^(20\d\d)[\/-](\d\d?)[\/-](\d\d?)$/) {
        my $calc2 = DateTime->new(
            year => $1, month => $2, day => $3,
        );

        my $subtract = $calc1->delta_days($calc2);
        print $subtract->in_units('days')."\n";
    }
}
