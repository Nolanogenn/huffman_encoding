use Tree::Simple;
use warnings;
use strict;

my $filename = $ARGV[0];
open(FH, '<', $filename) or die $!;
my @tokens = ();
my @linetokens;
my %token_hash;
my $huffmann_tree = Tree::Simple->new("0", Tree::Simple->ROOT); 

while(<FH>){
	my $line = $_;
	my @linetokens = split(' ', $line);
	foreach my $token (@linetokens){
		my $lc_token = lc $token;
		push(@tokens, $lc_token);
}
};
foreach my $token (@tokens) {
	$token_hash{$token}++
};

%sorted_tokens = reverse sort values %token_hash;



close(FH);
