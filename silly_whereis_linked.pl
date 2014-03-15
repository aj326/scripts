#!/usr/bin/perl
##################################
# Ahmed AlJehairan
# ahmed.jehairan@utexas.edu
# GitHub: https://github.com/aj326
##################################
# Project: 
# Description: 
#######################
use v5.10;
use Data::Dumper;	
use autodie;
use strict;
use warnings;
#######################
#Variables:
###########
my $in = qx(whereis gvim);
my $out;
my @stack = split/ /,$in;
shift @stack;
 say Dumper(@stack);
foreach	(@stack){
	$out = qx/ls -la $_/;
	say $out;
}
