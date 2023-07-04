use warnings;
use strict;

my $filename = $ARGV[0];
open(FH, '<', $filename) or die $!;
my @tokens;
my @linetokens;

while(<FH>){
	my $line = $_;
	my @linetokens = split(' ', $line);
	foreach my $token (@linetokens){
		my $lc_token = lc $token;
		print "$lc_token\n";
}
}



close(FH);
