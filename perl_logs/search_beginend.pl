# License GNU GPL v3.0
use strict;

my $line = '';
my $guard = 0;
my $patternBegin = 'lle-begin';
my $patternEnd = 'lle-end';

my $counter = 0;
open(IN,'logs.txt') or die("Could not open log file.");
foreach (<IN>) {
    if (!(/$patternBegin/) and ($guard == 0)) 
    {
	  next;
    }
    $guard = 1;
    $line = $_;
    chomp;
    print $line;
    $counter++;
    if(/$patternEnd/) {
    	$guard = 0;
    	last;
    }
}
close(IN);
print "Number of elements: ".$counter;

