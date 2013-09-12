#!/usr/bin/perl
use utf8;

binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";
my $pwd = __FILE__;
$pwd =~ s/^(.*[^\/]\/).*/\1/;
require("$pwd/morpho.fa.check.pl");
$prefixes=qr/(?:(?:ne)?(?:u|na|za?|s|pre|pred|zod|pri|vy?|od?|po|do|zo)?)/;
while ($option=shift) {
  if ($option eq "-vars") {$withvars=1}
  elsif ($option eq "-nosep") {$nosep=1}
}
while (<>) {
  chomp;
  /([^\t]*)(\t([^-:\t]+)([^:\t]*)[^\t]*)(?:\t([^\t]*)((?:\t.*)?))?/ || die ("Bad input format : \"$_\"\n");
  $w=$1;
  $class=$2;
  $origw=$w.$class;
  $cat=$3;
  $t=$3.$4;
  $fullname=$5;
  $remainer=$6;
  $w=~s/___.*//;
  if ($fullname eq "") { $fullname = "ALL" }
  while ($fullname ne "") {
    $fullname=~s/^(?:(.*)\@\@)?([^\@]+)/$1/;
    $name=$2;
    for $w2 (&lemmatize($w,$cat,$t,"",0,1)) {
      next if ($w2=~/<error/ || $w2!~/\t/);
      $_=$w2;
      if (!&check_lemma($_)) {
          next;
      }
      $_=$w2;
      $l++;
      $nf=0;
      if ($l % 100 == 0) {print STDERR "$l\r"}
      /^([^\t]*?)((?:___[^\t]*)?)\t([^:\t]+)(.*)$/ || die ("Bad input format : \"$_\"\n");
      $r=$1; $var=$2; $t=$3; $v=$4; $_=$r;
      $oldr=$r;
  
      if (0) {
      } elsif ($cat eq "v4") {
          if (0) {
          } elsif ($t eq "v4") {
        }
      } elsif ($cat eq "v21") {
          if (0) {
          } elsif ($t eq "v21") {
        }
      } elsif ($cat eq "N2") {
          if (0) {
          } elsif ($t eq "N2") {
        }
      } elsif ($cat eq "v15") {
          if (0) {
          } elsif ($t eq "v15") {
        }
      } elsif ($cat eq "ADV1") {
          if (0) {
          } elsif ($t eq "ADV1") {
        }
      } elsif ($cat eq "N8") {
          if (0) {
          } elsif ($t eq "N8") {
        }
      } elsif ($cat eq "ADJ_ORD") {
          if (0) {
          } elsif ($t eq "ADJ_ORD") {
        }
      } elsif ($cat eq "N5") {
          if (0) {
          } elsif ($t eq "N5") {
        }
      } elsif ($cat eq "v6") {
          if (0) {
          } elsif ($t eq "v6") {
        }
      } elsif ($cat eq "v26") {
          if (0) {
          } elsif ($t eq "v26") {
        }
      } elsif ($cat eq "v11") {
          if (0) {
          } elsif ($t eq "v11") {
        }
      } elsif ($cat eq "v28") {
          if (0) {
          } elsif ($t eq "v28") {
        }
      } elsif ($cat eq "v27") {
          if (0) {
          } elsif ($t eq "v27") {
        }
      } elsif ($cat eq "pref") {
          if (0) {
          } elsif ($t eq "pref") {
        }
      } elsif ($cat eq "v") {
          if (0) {
          } elsif ($t eq "v-aux") {
        }
      } elsif ($cat eq "v3") {
          if (0) {
          } elsif ($t eq "v3") {
        }
      } elsif ($cat eq "v19") {
          if (0) {
          } elsif ($t eq "v19") {
        }
      } elsif ($cat eq "N14") {
          if (0) {
          } elsif ($t eq "N14") {
        }
      } elsif ($cat eq "v25") {
          if (0) {
          } elsif ($t eq "v25") {
        }
      } elsif ($cat eq "v10") {
          if (0) {
          } elsif ($t eq "v10") {
        }
      } elsif ($cat eq "v7") {
          if (0) {
          } elsif ($t eq "v7") {
        }
      } elsif ($cat eq "v20") {
          if (0) {
          } elsif ($t eq "v20") {
        }
      } elsif ($cat eq "v5") {
          if (0) {
          } elsif ($t eq "v5") {
        }
      } elsif ($cat eq "v23") {
          if (0) {
          } elsif ($t eq "v23") {
        }
      } elsif ($cat eq "v9") {
          if (0) {
          } elsif ($t eq "v9") {
        }
      } elsif ($cat eq "v24") {
          if (0) {
          } elsif ($t eq "v24") {
        }
      } elsif ($cat eq "inv") {
          if (0) {
          } elsif ($t eq "inv") {
        }
      } elsif ($cat eq "v17") {
          if (0) {
          } elsif ($t eq "v17") {
        }
      } elsif ($cat eq "N12") {
          if (0) {
          } elsif ($t eq "N12") {
        }
      } elsif ($cat eq "v12") {
          if (0) {
          } elsif ($t eq "v12") {
        }
      } elsif ($cat eq "v29") {
          if (0) {
          } elsif ($t eq "v29") {
        }
      } elsif ($cat eq "N1") {
          if (0) {
          } elsif ($t eq "N1") {
        }
      } elsif ($cat eq "v18") {
          if (0) {
          } elsif ($t eq "v18") {
        }
      } elsif ($cat eq "ADV2") {
          if (0) {
          } elsif ($t eq "ADV2") {
        }
      } elsif ($cat eq "N6") {
          if (0) {
          } elsif ($t eq "N6") {
        }
      } elsif ($cat eq "N15") {
          if (0) {
          } elsif ($t eq "N15") {
        }
      } elsif ($cat eq "v8") {
          if (0) {
          } elsif ($t eq "v8") {
        }
      } elsif ($cat eq "ADJ") {
          if (0) {
          } elsif ($t eq "ADJ") {
        }
      } elsif ($cat eq "v1") {
          if (0) {
          } elsif ($t eq "v1") {
        }
      } elsif ($cat eq "v14") {
          if (0) {
          } elsif ($t eq "v14") {
        }
      } elsif ($cat eq "v2") {
          if (0) {
          } elsif ($t eq "v2") {
        }
      } elsif ($cat eq "v13") {
          if (0) {
          } elsif ($t eq "v13") {
        }
      } elsif ($cat eq "v22") {
          if (0) {
          } elsif ($t eq "v22") {
        }
      } elsif ($cat eq "v16") {
          if (0) {
          } elsif ($t eq "v16") {
        }
      }
    }
    if ($name ne "ALL" && $fullname eq "") {print $origw."\t".$r.$remainer."\n";}
  }
}
