use strict;

my $line = '';
my $pattern = '53c4a1c4-3019-83d4-02c2611dde4f';

open(IN,'logs.txt') or die("Could not open log file.");
foreach (<IN>) {
    $line = $_;
    chomp;
    print $line if (/$pattern/);
}
close(IN);
