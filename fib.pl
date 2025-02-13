#!/usr/bin/perl
use strict;
use warnings;

# Function to generate Fibonacci series
sub fibonacci {
    my ($n) = @_;
    my @fib = (0, 1);

    for (my $i = 2; $i < $n; $i++) {
        $fib[$i] = $fib[$i - 1] + $fib[$i - 2];
    }

    return @fib;
}

# Get the number of terms from user input
print "Enter the number of terms: ";
my $num_terms = <STDIN>;
chomp($num_terms);

# Generate and print the Fibonacci series
my @fib_series = fibonacci($num_terms);
print "Fibonacci series: @fib_series\n";
