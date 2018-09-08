# License GNU GPL v3.0
use strict;

my $line     = '';
my $timeFrom = '08:03:25.890';
my $timeTo   = '08:03:31.890';

my $counter = 0;
open( IN, 'logs.txt' ) or die("Could not open log file.");
foreach my $orgLine (<IN>) {
    $line = $orgLine;
    chomp($line);
    ( my $date, my $time, my $uid, my $char, my $user, my $text ) =
      split( '\t', $line );
    if (    defined $time
        and $time =~ /(\d+):(\d+):(\d+).(\d+)/
        and $time ge $timeFrom
        and $time le $timeTo )
    {
        print $orgLine;
        $counter++;
    }
}
print "Number of elements: " . $counter;
close(IN);
