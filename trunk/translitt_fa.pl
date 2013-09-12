#!/usr/bin/perl

use utf8;
binmode STDIN, ":utf8";
binmode STDOUT, ":utf8";
binmode STDERR, ":utf8";

$type = "au";
$lang = "fa";
$col = -1;

while (1) {
  $_=shift;
  if (/^$/) {last;}
  elsif (/^-(1|ilex)$/) {$col=1;}
  elsif (/^-(2|lex)$/) {$col=2;}
  elsif (/^-(la|al|ua|au)$/) {$type=$1;}
  elsif (/^-l$/) {$lang=shift;}
  else {die "unknown option : $_"}
}

# Translitteration changes w.r.t. previous versions (+added sorani letters)
# ḣ -> ħ / ł
# v -> w
# ż -> đ
# New translitteration changes proposed:
# e -> ˝
# h -> e
# ġ -> h (moreover, this removes the pb that no corresponding latin-2 character was available, which forced us to use the ugly '¤')

%translitt_table = (
	  "،" => { unicode => ",", latin2 => ","},
	  "؛" => { unicode => ";", latin2 => ";"},
	  "؟" => { unicode => "?", latin2 => "?"},
	  "ء" => { unicode => "°", latin2 => "°"}, # à supprimer tout court
	  "آ" => { unicode => "ā", latin2 => "â"},
	  "أ" => { unicode => "á", latin2 => "á"}, # mauvais, à remplacer par ا
	  "ؤ" => { unicode => "ú", latin2 => "ú"}, # mauvais, à remplacer par و
	  "إ" => { unicode => "E", latin2 => "E"}, # mauvais, à remplacer par ا
	  "ئ" => { unicode => "´", latin2 => "´"}, # mauvais en fin de mot, remplacer par ی
	  "ا" => { unicode => "a", latin2 => "a"},
	  "ب" => { unicode => "b", latin2 => "b"},
	  "ة" => { unicode => "T", latin2 => "T"}, # mauvais, à remplacer par ه 
	  "ت" => { unicode => "t", latin2 => "t"},
	  "ث" => { unicode => "ç", latin2 => "ç"},
	  "ج" => { unicode => "j", latin2 => "j"},
	  "ح" => { unicode => "ħ", latin2 => "ł"},
	  "خ" => { unicode => "x", latin2 => "x"},
	  "د" => { unicode => "d", latin2 => "d"},
	  "ذ" => { unicode => "đ", latin2 => "đ"},
	  "ر" => { unicode => "r", latin2 => "r"},
	  "ڕ" => { unicode => "ř", latin2 => "ř"}, # sorani
	  "ز" => { unicode => "z", latin2 => "z"},
	  "س" => { unicode => "s", latin2 => "s"},
	  "ش" => { unicode => "š", latin2 => "š"},
	  "ص" => { unicode => "ş", latin2 => "ş"},
	  "ض" => { unicode => "ź", latin2 => "ź"},
	  "ط" => { unicode => "ţ", latin2 => "ţ"},
	  "ظ" => { unicode => "ẓ", latin2 => "ż"},
	  "ع" => { unicode => "'", latin2 => "'"},
	  "غ" => { unicode => "q", latin2 => "q"},
	  "ـ" => { unicode => "=", latin2 => "="}, # à supprimer
	  "ف" => { unicode => "f", latin2 => "f"},
	  "ڤ" => { unicode => "v", latin2 => "v"}, # sorani
	  "ق" => { unicode => "ŕ", latin2 => "ŕ"},
	  "ك" => { unicode => "K", latin2 => "K"}, # à remplacer par k
	  "ل" => { unicode => "l", latin2 => "l"},
	  "ڵ" => { unicode => "ľ", latin2 => "ľ"}, # sorani
	  "م" => { unicode => "m", latin2 => "m"},
	  "ن" => { unicode => "n", latin2 => "n"},
	  "ه" => { unicode => "h", latin2 => "h"},
	  "و" => { unicode => "w", latin2 => "w"},
	  "ۆ" => { unicode => "o", latin2 => "o"},
	  "ى" => { unicode => "Ý", latin2 => "Ý"}, #y
	  "ي" => { unicode => "Y", latin2 => "Y"}, #y
	  "ً" => { unicode => "e", latin2 => "e"},
	  "ٔ" => { unicode => "`", latin2 => "`"}, # à remplacer par un ی en fin de mot
	  "٫" => { unicode => "⎖", latin2 => "˛"},
	  "ٱ" => { unicode => "Á", latin2 => "Á"}, # à remplacer par ا
	  "پ" => { unicode => "p", latin2 => "p"},
	  "چ" => { unicode => "č", latin2 => "č"},
	  "ژ" => { unicode => "ž", latin2 => "ž"},
	  "ک" => { unicode => "k", latin2 => "k"},
	  "گ" => { unicode => "g", latin2 => "g"},
	  "ھ" => { unicode => "ġ", latin2 => "¤"}, # remplacer par ه
	  "ۀ" => { unicode => "X", latin2 => "X"}, # remplacer par هی en fin de mot (ailleurs = erreur)
	  "ۇ" => { unicode => "~", latin2 => "~"}, # remplacer par و
	  "ی" => { unicode => "y", latin2 => "y"},
	  "ێ" => { unicode => "ě", latin2 => "ě"},
	  "۰" => { unicode => "0", latin2 => "0"},
	  "۱" => { unicode => "1", latin2 => "1"},
	  "۲" => { unicode => "2", latin2 => "2"},
	  "۳" => { unicode => "3", latin2 => "3"},
	  "۴" => { unicode => "4", latin2 => "4"},
	  "۵" => { unicode => "5", latin2 => "5"},
	  "۶" => { unicode => "6", latin2 => "6"},
	  "۷" => { unicode => "7", latin2 => "7"},
	  "۸" => { unicode => "8", latin2 => "8"},
	  "۹" => { unicode => "9", latin2 => "9"},
	  "‌" => { unicode => "_", latin2 => "_"}
	 );

%unicode_to_fa = (
	  "," => "،",
	  ";" => "؛",
	  "?" => "؟",
	  "°" => "ء",
	  "ā" => "آ",
	  "á" => "أ",
	  "ú" => "ؤ",
	  "E" => "إ",
	  "´" => "ئ",
	  "a" => "ا",
	  "b" => "ب",
	  "T" => "ة",
	  "t" => "ت",
	  "ç" => "ث",
	  "j" => "ج",
	  "ħ" => "ح",
	  "x" => "خ",
	  "d" => "د",
	  "đ" => "ذ",
	  "r" => "ر",
	  "ř" => "ڕ",
	  "z" => "ز",
	  "s" => "س",
	  "š" => "ش",
	  "ş" => "ص",
	  "ź" => "ض",
	  "ţ" => "ط",
	  "ẓ" => "ظ",
	  "'" => "ع",
	  "q" => "غ",
	  "=" => "ـ",
	  "f" => "ف",
	  "v" => "ڤ",
	  "ŕ" => "ق",
	  "K" => "ك",
	  "l" => "ل",
	  "ľ" => "ڵ",
	  "m" => "م",
	  "n" => "ن",
	  "h" => "ه",
	  "w" => "و",
	  "Ý" => "ى",
	  "Y" => "ي",
	  "e" => "ً",
	  "`" => "ٔ",
	  "⎖" => "٫",
	  "Á" => "ٱ",
	  "p" => "پ",
	  "č" => "چ",
	  "ž" => "ژ",
	  "k" => "ک",
	  "g" => "گ",
	  "ġ" => "ھ",
	  "X" => "ۀ",
	  "ě" => "ێ",
          "o" => "ۆ",
	  "~" => "ۇ",
	  "y" => "ی",
	  "0" => "۰",
	  "1" => "۱",
	  "2" => "۲",
	  "3" => "۳",
	  "4" => "۴",
	  "5" => "۵",
	  "6" => "۶",
	  "7" => "۷",
	  "8" => "۸",
	  "9" => "۹",
	  "_" => "‌",
	 );

%latin2_to_fa = (
	  "," => "،",
	  ";" => "؛",
	  "?" => "؟",
	  "°" => "ء",
	  "â" => "آ",
	  "á" => "أ",
	  "ú" => "ؤ",
	  "E" => "إ",
	  "´" => "ئ",
	  "a" => "ا",
	  "b" => "ب",
	  "T" => "ة",
	  "t" => "ت",
	  "ç" => "ث",
	  "j" => "ج",
	  "ł" => "ح",
	  "x" => "خ",
	  "d" => "د",
	  "đ" => "ذ",
	  "r" => "ر",
	  "ř" => "ڕ",
	  "z" => "ز",
	  "s" => "س",
	  "š" => "ش",
	  "ş" => "ص",
	  "ź" => "ض",
	  "ţ" => "ط",
	  "ż" => "ظ",
	  "'" => "ع",
	  "q" => "غ",
	  "=" => "ـ",
	  "f" => "ف",
	  "v" => "ڤ",
	  "ŕ" => "ق",
	  "K" => "ك",
	  "l" => "ل",
	  "ľ" => "ڵ",
	  "m" => "م",
	  "n" => "ن",
	  "h" => "ه",
	  "w" => "و",
	  "Ý" => "ى",
	  "Y" => "ي",
	  "e" => "ً",
	  "`" => "ٔ",
	  "˛" => "٫",
	  "Á" => "ٱ",
	  "p" => "پ",
	  "č" => "چ",
	  "ž" => "ژ",
	  "k" => "ک",
	  "g" => "گ",
	  "¤" => "ھ",
	  "X" => "ۀ",
	  "ě" => "ێ",
          "o" => "ۆ",
	  "~" => "ۇ",
	  "y" => "ی",
	  "0" => "۰",
	  "1" => "۱",
	  "2" => "۲",
	  "3" => "۳",
	  "4" => "۴",
	  "5" => "۵",
	  "6" => "۶",
	  "7" => "۷",
	  "8" => "۸",
	  "9" => "۹",
	  "_" => "‌",
	 );

if ($lang eq "ckb") {
  $translitt_table{"ھ"}{unicode} = "h";
  $translitt_table{"ه"}{unicode} = "e";
  $translitt_table{"ً"}{unicode} = "˝";
  $translitt_table{"ھ"}{latin2} = "h";
  $translitt_table{"ه"}{latin2} = "e";
  $translitt_table{"ً"}{latin2} = "˝";
  $unicode_to_fa{"h"} = "ھ";
  $unicode_to_fa{"e"} = "ه";
  $unicode_to_fa{"˝"} = "ً";
  $latin2_to_fa{"h"} = "ھ";
  $latin2_to_fa{"e"} = "ه";
  $latin2_to_fa{"˝"} = "ً";
}

if ($type eq "au") {
  while (<>) {
    chomp;
    $output = "";
    $tab = 0;
    while (s/^(.)//) {
      $tab++ if $1 eq "\t";
      if ($col == $tab) {
	$output .= $1.$_; last;
      }
      if (defined($translitt_table{$1})) {
	$output .= $translitt_table{$1}{unicode};
      } else {
	$output .= $1;
      }
    }
    print "$output\n";
  }
} elsif ($type eq "ua") {
  while (<>) {
    chomp;
    $output = "";
    $tab = 0;
    while (s/^(.)//) {
      $tab++ if $1 eq "\t";
      if ($col == $tab) {
	$output .= $1.$_; last;
      }
      if (defined($unicode_to_fa{$1})) {
	$output .= $unicode_to_fa{$1};
      } else {
	$output .= $1;
      }
    }
    print "$output\n";
  }
} elsif ($type eq "al") {
  while (<>) {
    chomp;
    $output = "";
    $tab = 0;
    while (s/^(.)//) {
      $tab++ if $1 eq "\t";
      if ($col == $tab) {
	$output .= $1.$_; last;
      }
      if (defined($translitt_table{$1})) {
	$output .= $translitt_table{$1}{latin2};
      } else {
	$output .= $1;
      }
    }
    print "$output\n";
  }
} elsif ($type eq "la") {
  while (<>) {
    chomp;
    $output = "";
    $tab = 0;
    while (s/^(.)//) {
      $tab++ if $1 eq "\t";
      if ($col == $tab) {
	$output .= $1.$_; last;
      }
      if (defined($latin2_to_fa{$1})) {
	$output .= $latin2_to_fa{$1};
      } else {
	$output .= $1;
      }
    }
    print "$output\n";
  }
}
