use strict;

my $line = '';
my $timeFrom = '09:03:27.890';
my $timeTo = '09:04:30.890';

open(IN,'logs.txt') or die("Could not open log file.");
foreach my $orgLine (<IN>) {
    $line = $orgLine;
    chomp($line); 
    (my $date, my $time, my $uid, my $char, my $user, my $text) = split('\t', $line);
    print $orgLine if ($time ge $timeFrom and $time le $timeTo);
}
close(IN);
