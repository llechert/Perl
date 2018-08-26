# License GNU GPL v3.0
use strict;

my $line = '';
my $pattern = '53c4a1c4-3019-83d4-02c2611dde4f';

if (scalar(@ARGV) > 0)
{
  $pattern = $ARGV[0];
}

my $counter = 0;
open(IN,'logs.txt') or die("Could not open log file.");
foreach (<IN>) {
    $line = $_;
    chomp;
    if (/ApplicationNumber/ or /$pattern/) 
    {
      print $line;
      $counter++;   	
    }
}
close(IN);
print "Number of elements: ".$counter;

