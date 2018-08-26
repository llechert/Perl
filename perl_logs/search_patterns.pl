use strict;

my $line = '';
my $counter = 0;
my @patterns = ("ApplicationNumber", "53c4a1c4-3019-83d4-02c2611dde4f", "63c4a1c4-3019-83d4-02c2611dde4f");

open(IN,'logs.txt') or die("Could not open log file.");
foreach (<IN>) {
    $line = $_;
    chomp;
    for my $pattern (@patterns) 
    {
      if (/$pattern/)
      {
        print $line;
        $counter++;
       }
    }
}
close(IN);
print "Number of elements: ".$counter;

