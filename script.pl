#!/usr/bin/perl
my @fred = (1..1000);
my $fred_total = total(@fred);
my $average = &above_average(@fred);
sub total {   
	my $sum = 0;
	my @numbers = ();
	foreach my $number( @_ ) {
		if($number > $average) {
			push(@numbers, $number);
		}   
	}
	return @numbers;
}

sub above_average {
	my $sum = 0;
	foreach my $number( @_ ) {
		$sum += $number;    
	}
	return $sum/@_;
}
print &total(@fred);