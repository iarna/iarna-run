#!/usr/bin/env perl
my $which = __FILE__;
$which =~ s{[^/]*$}{node_modules/.bin/which};
my $npxpath = qx($which npx);
chomp $npxpath;
unshift @ARGV, 'npx';
exec {$npxpath} @ARGV;
