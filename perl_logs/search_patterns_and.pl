#!/usr/local/bin/perl -w
# License GNU GPL v3.0
use strict;

# AND searching

my $line    = '';
my $counter = 0;

# Files
my $fileName = 'logs.txt';

# Patterns
my @patterns = ( "63c4a1c4-3019-83d4-02c2611dde4f", "contact", "admin" );

open( IN, $fileName ) or die("Could not open log file.");
foreach (<IN>) {
    $line = $_;
    chomp;
    my $guard = 0;
    for my $pattern (@patterns) {
        if ( !/$pattern/ ) {
            last;
        }
        $guard++;
    }
    if ( $guard == @patterns ) { print $line; $counter++; }
}
close(IN);
print "Number of elements: " . $counter;
