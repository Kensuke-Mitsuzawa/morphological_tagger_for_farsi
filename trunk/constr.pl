#!/usr/bin/perl

use open ':utf8';
use utf8;

binmode STDIN, ":utf8"; 
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";

my $l;
my %cache;

while (<>) {
  chomp;
  $l++;
  if ($l % 1000 == 0) {print STDERR "\r     Line $l";}
  /^([^\t]*\t[^\t]*)\t([^\t]*)\t([^\t]*)\t([^\t]*);\%([^\t;]*)\t([^\t]*)/ || die "constr.pl: Wrong input format: $_";
  my $lemma = $1; my $msprop = $2; my $infos = $3; my $sc = $4; my $constrs = $5; my $inflclass = $6;
  my $newsc;
  for my $constr (split(/,\s*%/,$constrs)) {
    $sc = $newsc=$sc;
    for (split(/\s*\+\s*%/,$constr)) {
      $newsc = &transform($newsc,$msprop,$_);
      last if ($newsc eq "");
    }
    if ($newsc ne "") {
#      print "$lemma\t$msprop\t$infos\t$newsc\t%$constr\n";
      &__output ($lemma,$msprop,$infos,$newsc,"%$constr",$inflclass);
    }
  }
}
print STDERR "\r     Done             \n";

sub transform {
  my $s = shift;
  my $msprop = shift;
  my $constr = shift;
  if ($constr eq "default") {return $s;}
  else {return "ERROR ($constr)";}
}

sub sort_subcatframe {
    my $sc = shift;
    my $newsc = "";
    my ($args,$arg,$asr);
    if ($sc ne "") {
	$sc =~ /^<(.*)>(.*)$/ || die "Wrong subcat format in $_ ($sc)\n";
	$args = $1;
	$asr = $2; # asemantic realizations
	$newsc.="<";
	for $arg (split(/\s*,\s*/,$args)) {
	    $arg =~ s/^([^:]+):(\(?)(.*?)(\)?)$/$3/;
	    $newsc .= $1.":".$2.join("|", sort split(/\s*\|\s*/,$arg))."$4,";
	}
	$newsc =~ s/,$//;
	$newsc .= ">".(join(",", sort split(/\s*,\s*/,$asr)));
    }
    return $newsc;
}

sub sort_macros {
    my $macros = shift;
    $macros =~ s/^,+//;
    $macros =~ s/,+$//;
    $macros = join(",", sort split(/\s*,+\s*/,$macros));
    while ($macros =~ s/(^|,)([^,]+)(?:,\2)+,/\1\2,/) {}
    return $macros;
}
sub __output {
  my $lemma = shift;
  my $msprop = shift;
  my $infos = shift;
  my $sc = shift;
  my $constrs = shift;
  my $inflclass = shift;
  $constrs =~ /^(^|.*,)\s*(\%[^,]+)\s*$/;
  my $lastconstr = $2;
  if ($constrs !~ /^\%/) {
    print "$lemma\t$msprop\t$infos\t$sc\t%$constrs\n";
  } else {
    print "$lemma\t$msprop\t$infos\t$sc\t$constrs\t$inflclass\n";
  }
}
