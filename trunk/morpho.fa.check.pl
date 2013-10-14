use utf8;
$prefixes=qr/(?:(?:ne)?(?:u|na|za?|s|pre|pred|zod|pri|vy?|od?|po|do|zo)?)/;


our %terms;
$terms{"↑yd"}=1;
$terms{""}=1;
$terms{"€ym"}=1;
$terms{"°ym"}=1;
$terms{"yanman"}=1;
$terms{"↕an"}=1;
$terms{"×nd"}=1;
$terms{"źy"}=1;
$terms{"yd"}=1;
$terms{"↙e"}=1;
$terms{"e"}=1;
$terms{"≤an"}=1;
$terms{"¬m"}=1;
$terms{"»"}=1;
$terms{"♫m"}=1;
$terms{"♪nd"}=1;
$terms{"♦y"}=1;
$terms{"²ym"}=1;
$terms{"_tryn"}=1;
$terms{"antan"}=1;
$terms{"×an"}=1;
$terms{"↑nde"}=1;
$terms{"←an"}=1;
$terms{"«"}=1;
$terms{"kany"}=1;
$terms{":d"}=1;
$terms{"×m"}=1;
$terms{"×yd"}=1;
$terms{":ym"}=1;
$terms{"♠ym"}=1;
$terms{"attan"}=1;
$terms{"wźman"}=1;
$terms{"¬an"}=1;
$terms{"»y"}=1;
$terms{"→ym"}=1;
$terms{"♠m"}=1;
$terms{"→nd"}=1;
$terms{"³nde"}=1;
$terms{"»an"}=1;
$terms{"ganšan"}=1;
$terms{"♠nd"}=1;
$terms{"yany"}=1;
$terms{"¨y"}=1;
$terms{"#"}=1;
$terms{"©an"}=1;
$terms{"§e"}=1;
$terms{"÷n"}=1;
$terms{"·nde"}=1;
$terms{":n"}=1;
$terms{"€nd"}=1;
$terms{"man"}=1;
$terms{"ź_aš"}=1;
$terms{"ź_am"}=1;
$terms{"_trynt"}=1;
$terms{"€y"}=1;
$terms{"¨d"}=1;
$terms{"_eayšan"}=1;
$terms{"©e"}=1;
$terms{"~e"}=1;
$terms{"a"}=1;
$terms{"»n"}=1;
$terms{"°m"}=1;
$terms{"²e"}=1;
$terms{"°nd"}=1;
$terms{"♠yd"}=1;
$terms{"≤nde"}=1;
$terms{"»e"}=1;
$terms{"♠y"}=1;
$terms{"³m"}=1;
$terms{"_eayš"}=1;
$terms{"¿d"}=1;
$terms{"¢"}=1;
$terms{"·n"}=1;
$terms{"anšan"}=1;
$terms{"↓"}=1;
$terms{"¿nde"}=1;
$terms{"↕n"}=1;
$terms{"anman"}=1;
$terms{"¢e"}=1;
$terms{"»nd"}=1;
$terms{"€e"}=1;
$terms{"♪yd"}=1;
$terms{"¨m"}=1;
$terms{"♦nde"}=1;
$terms{"tan"}=1;
$terms{"¬ym"}=1;
$terms{"©nde"}=1;
$terms{"≤ym"}=1;
$terms{"↕ym"}=1;
$terms{"yanšan"}=1;
$terms{"_eaytan"}=1;
$terms{"♪y"}=1;
$terms{"£d"}=1;
$terms{"¿nd"}=1;
$terms{"ant"}=1;
$terms{"©n"}=1;
$terms{":nde"}=1;
$terms{"¬n"}=1;
$terms{"¨an"}=1;
$terms{"◄e"}=1;
$terms{"♦d"}=1;
$terms{"~yd"}=1;
$terms{"↙nde"}=1;
$terms{"·d"}=1;
$terms{"«n"}=1;
$terms{"yšan"}=1;
$terms{"³d"}=1;
$terms{"↕nde"}=1;
$terms{"_eayy"}=1;
$terms{"√e"}=1;
$terms{"źtan"}=1;
$terms{"gant"}=1;
$terms{"×e"}=1;
$terms{"eaym"}=1;
$terms{"_aš"}=1;
$terms{"↑n"}=1;
$terms{"→y"}=1;
$terms{"³y"}=1;
$terms{":e"}=1;
$terms{":nd"}=1;
$terms{"£nd"}=1;
$terms{"¢nde"}=1;
$terms{"²y"}=1;
$terms{"kanm"}=1;
$terms{"yantan"}=1;
$terms{"♫d"}=1;
$terms{"wźš"}=1;
$terms{"§m"}=1;
$terms{"↙d"}=1;
$terms{"£nde"}=1;
$terms{"·nd"}=1;
$terms{"²nd"}=1;
$terms{"©m"}=1;
$terms{"_trynm"}=1;
$terms{"»nde"}=1;
$terms{"kan"}=1;
$terms{"§an"}=1;
$terms{"°yd"}=1;
$terms{":m"}=1;
$terms{"→e"}=1;
$terms{"♦an"}=1;
$terms{"☼e"}=1;
$terms{"«an"}=1;
$terms{"_trš"}=1;
$terms{"_trynš"}=1;
$terms{"€an"}=1;
$terms{"³yd"}=1;
$terms{"¨e"}=1;
$terms{"♫n"}=1;
$terms{"♫"}=1;
$terms{"↕e"}=1;
$terms{"~"}=1;
$terms{"³"}=1;
$terms{"►a"}=1;
$terms{"³nd"}=1;
$terms{"♦"}=1;
$terms{"→n"}=1;
$terms{"←d"}=1;
$terms{"♦e"}=1;
$terms{"√n"}=1;
$terms{"eae"}=1;
$terms{"_tr"}=1;
$terms{"wź"}=1;
$terms{"·e"}=1;
$terms{"_"}=1;
$terms{":°an"}=1;
$terms{"«nde"}=1;
$terms{"ešan"}=1;
$terms{"√nde"}=1;
$terms{"_am"}=1;
$terms{"♦m"}=1;
$terms{"ganm"}=1;
$terms{"ty"}=1;
$terms{"◄m"}=1;
$terms{"¬nde"}=1;
$terms{"√ym"}=1;
$terms{"×n"}=1;
$terms{"š"}=1;
$terms{"ean"}=1;
$terms{"§yd"}=1;
$terms{"¿m"}=1;
$terms{"wźt"}=1;
$terms{"·an"}=1;
$terms{"→an"}=1;
$terms{"→"}=1;
$terms{"yant"}=1;
$terms{"→m"}=1;
$terms{"¬"}=1;
$terms{"·yd"}=1;
$terms{"¢ym"}=1;
$terms{"t"}=1;
$terms{"anš"}=1;
$terms{"€d"}=1;
$terms{"»ym"}=1;
$terms{"nd"}=1;
$terms{"£y"}=1;
$terms{"ttan"}=1;
$terms{"◄nd"}=1;
$terms{"¢d"}=1;
$terms{"_at"}=1;
$terms{"»d"}=1;
$terms{"·"}=1;
$terms{"tšan"}=1;
$terms{"≤m"}=1;
$terms{"←y"}=1;
$terms{"°n"}=1;
$terms{"§nd"}=1;
$terms{"¿"}=1;
$terms{"↙n"}=1;
$terms{"~ym"}=1;
$terms{"ź"}=1;
$terms{"√an"}=1;
$terms{"♫an"}=1;
$terms{"²m"}=1;
$terms{"←ym"}=1;
$terms{"~y"}=1;
$terms{"¢n"}=1;
$terms{"e_am"}=1;
$terms{"n"}=1;
$terms{"źman"}=1;
$terms{"yš"}=1;
$terms{"¨n"}=1;
$terms{"ytan"}=1;
$terms{"↑ym"}=1;
$terms{"¿y"}=1;
$terms{"ny"}=1;
$terms{"€m"}=1;
$terms{"√y"}=1;
$terms{"☼ym"}=1;
$terms{"♫yd"}=1;
$terms{"√"}=1;
$terms{"←yd"}=1;
$terms{"_y"}=1;
$terms{"←e"}=1;
$terms{"«yd"}=1;
$terms{"©d"}=1;
$terms{"↕d"}=1;
$terms{"►"}=1;
$terms{"↙ym"}=1;
$terms{"y"}=1;
$terms{"↑an"}=1;
$terms{"yy"}=1;
$terms{"♪ym"}=1;
$terms{"»yd"}=1;
$terms{"ź_ay"}=1;
$terms{"e_at"}=1;
$terms{"eand"}=1;
$terms{"÷ym"}=1;
$terms{"_eaym"}=1;
$terms{"€yd"}=1;
$terms{"≤n"}=1;
$terms{"st"}=1;
$terms{"east"}=1;
$terms{"¬yd"}=1;
$terms{"©"}=1;
$terms{"«y"}=1;
$terms{"£e"}=1;
$terms{"atman"}=1;
$terms{"_ay"}=1;
$terms{"↑"}=1;
$terms{"~nd"}=1;
$terms{"e_aš"}=1;
$terms{"♠nde"}=1;
$terms{"♠d"}=1;
$terms{"♦n"}=1;
$terms{"²d"}=1;
$terms{"↙"}=1;
$terms{"©yd"}=1;
$terms{"♦yd"}=1;
$terms{"¢m"}=1;
$terms{"³n"}=1;
$terms{"↙an"}=1;
$terms{"→d"}=1;
$terms{"↕"}=1;
$terms{"£an"}=1;
$terms{"_ea"}=1;
$terms{"¬y"}=1;
$terms{"eayd"}=1;
$terms{"~nde"}=1;
$terms{"☼y"}=1;
$terms{"gany"}=1;
$terms{"☼yd"}=1;
$terms{"√m"}=1;
$terms{"eay"}=1;
$terms{"◄ym"}=1;
$terms{"÷an"}=1;
$terms{"☼m"}=1;
$terms{"§nde"}=1;
$terms{"♫ym"}=1;
$terms{"·ym"}=1;
$terms{":yd"}=1;
$terms{"→nde"}=1;
$terms{"~n"}=1;
$terms{"_eayt"}=1;
$terms{"·y"}=1;
$terms{"←m"}=1;
$terms{"☼d"}=1;
$terms{"×ym"}=1;
$terms{"ey"}=1;
$terms{":°nde"}=1;
$terms{"£n"}=1;
$terms{"♦ym"}=1;
$terms{"€"}=1;
$terms{"wźtan"}=1;
$terms{"↑nd"}=1;
$terms{"etan"}=1;
$terms{"↕nd"}=1;
$terms{"_trman"}=1;
$terms{"♫nde"}=1;
$terms{"↙yd"}=1;
$terms{"~m"}=1;
$terms{"°d"}=1;
$terms{"kanšan"}=1;
$terms{"²n"}=1;
$terms{"ganš"}=1;
$terms{"gantan"}=1;
$terms{"♣"}=1;
$terms{"¢y"}=1;
$terms{"÷d"}=1;
$terms{"↕y"}=1;
$terms{"t_am"}=1;
$terms{"↑d"}=1;
$terms{"♪m"}=1;
$terms{"◄yd"}=1;
$terms{"e_ay"}=1;
$terms{"∆d"}=1;
$terms{"¿an"}=1;
$terms{":"}=1;
$terms{"€n"}=1;
$terms{"eam"}=1;
$terms{"a˝"}=1;
$terms{"◄"}=1;
$terms{"_tryntan"}=1;
$terms{"i"}=1;
$terms{"«d"}=1;
$terms{"≤"}=1;
$terms{"☼nd"}=1;
$terms{"_trt"}=1;
$terms{"¬nd"}=1;
$terms{"¨ym"}=1;
$terms{"m"}=1;
$terms{"÷yd"}=1;
$terms{"źšan"}=1;
$terms{":y"}=1;
$terms{"ym"}=1;
$terms{"_eay"}=1;
$terms{"≤y"}=1;
$terms{"t_aš"}=1;
$terms{"€nde"}=1;
$terms{"¿yd"}=1;
$terms{"_tryny"}=1;
$terms{"¬e"}=1;
$terms{"³an"}=1;
$terms{"÷nde"}=1;
$terms{"šan"}=1;
$terms{"×"}=1;
$terms{"♦nd"}=1;
$terms{"♠e"}=1;
$terms{"att"}=1;
$terms{"¨"}=1;
$terms{"§n"}=1;
$terms{"¢an"}=1;
$terms{"£ym"}=1;
$terms{"§ym"}=1;
$terms{"kanš"}=1;
$terms{"wźm"}=1;
$terms{"¢nd"}=1;
$terms{"≤d"}=1;
$terms{"↙nd"}=1;
$terms{"§y"}=1;
$terms{"ź_at"}=1;
$terms{"°e"}=1;
$terms{"~d"}=1;
$terms{"°y"}=1;
$terms{"≤nd"}=1;
$terms{"©ym"}=1;
$terms{"◄y"}=1;
$terms{"↑y"}=1;
$terms{"_eayman"}=1;
$terms{"«ym"}=1;
$terms{"◄n"}=1;
$terms{"↑m"}=1;
$terms{"↕m"}=1;
$terms{"t_at"}=1;
$terms{"©nd"}=1;
$terms{"÷m"}=1;
$terms{"«nd"}=1;
$terms{"↕yd"}=1;
$terms{"÷y"}=1;
$terms{"¿e"}=1;
$terms{"←n"}=1;
$terms{"yan"}=1;
$terms{"¿ym"}=1;
$terms{"anm"}=1;
$terms{"→yd"}=1;
$terms{"☼n"}=1;
$terms{"♪"}=1;
$terms{"²nde"}=1;
$terms{"aty"}=1;
$terms{"_tršan"}=1;
$terms{"any"}=1;
$terms{"·m"}=1;
$terms{"kant"}=1;
$terms{"♫nd"}=1;
$terms{"§d"}=1;
$terms{"t_ay"}=1;
$terms{"♪e"}=1;
$terms{"an"}=1;
$terms{"√yd"}=1;
$terms{"¢yd"}=1;
$terms{":an"}=1;
$terms{"_trtan"}=1;
$terms{"←nd"}=1;
$terms{"©y"}=1;
$terms{"♫y"}=1;
$terms{"↑e"}=1;
$terms{"_try"}=1;
$terms{"≤e"}=1;
$terms{"_trynman"}=1;
$terms{"÷nd"}=1;
$terms{"yt"}=1;
$terms{"²yd"}=1;
$terms{"♠an"}=1;
$terms{"atš"}=1;
$terms{"¹"}=1;
$terms{"↙m"}=1;
$terms{"£"}=1;
$terms{"~an"}=1;
$terms{"♫e"}=1;
$terms{"³e"}=1;
$terms{"kanman"}=1;
$terms{"♠n"}=1;
$terms{"£yd"}=1;
$terms{"¨nde"}=1;
$terms{"¨nd"}=1;
$terms{"eman"}=1;
$terms{"¬d"}=1;
$terms{"↙y"}=1;
$terms{"gan"}=1;
$terms{"²an"}=1;
$terms{"ganman"}=1;
$terms{"≤yd"}=1;
$terms{"¨yd"}=1;
$terms{"×nde"}=1;
$terms{"»m"}=1;
$terms{"tman"}=1;
$terms{"÷e"}=1;
$terms{"←nde"}=1;
$terms{"³ym"}=1;
$terms{"÷"}=1;
$terms{"£m"}=1;
$terms{"wźy"}=1;
$terms{"♪n"}=1;
$terms{"×d"}=1;
$terms{"×y"}=1;
$terms{"at"}=1;
$terms{"wźšan"}=1;
$terms{"¿n"}=1;
$terms{"√nd"}=1;
$terms{"_trynšan"}=1;
$terms{"yman"}=1;
$terms{"yanš"}=1;
$terms{"yanm"}=1;
$terms{"atšan"}=1;
$terms{"«e"}=1;
$terms{"√d"}=1;
$terms{"«m"}=1;
$terms{"atm"}=1;
$terms{"_trm"}=1;
$terms{"kantan"}=1;

sub check_lemma {
  $w=shift;
  chomp($w);
  $w =~ s/ / /g;
  $w=~/^([^\t]*)\t([^:\t]+)(.*)$/ || die ("Bad input format for check_lemma : \"$w\"\n");
  $r=$1; $t=$2; $v=$3;
  $r=~s/___.*//;
  $_=$r; $rep=1;

  if (0) {
  } elsif ($t eq "v4") {
    $rep=-1;
    {if ($r=~/^(..*)ad$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v4
    $rep=-1;
    {if ($r=~/^(..*)ad$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)ad$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v4
  } elsif ($t eq "v21") {
    $rep=-1;
    {if ($r=~/^(..*)ft$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v21
    $rep=-1;
    {if ($r=~/^(..*)ft$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)ft$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v21
  } elsif ($t eq "v15") {
    $rep=-1;
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v15
    $rep=-1;
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v15
  } elsif ($t eq "N2") {
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y|ee)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)o(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)w$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers3s, table N2
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*ee$/ && $r=~/^(.*)([we])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)o(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)w$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers1s, table N2
    $rep=-1;
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(.*)([we])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(.*)([ay])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingEzafe, table N2
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y|ee)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers2p, table N2
  } elsif ($t eq "v6") {
    $rep=-1;
    {if ($r=~/^(..*)wd$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v6
    $rep=-1;
    {if ($r=~/^(..*)wd$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)wd$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v6
  } elsif ($t eq "N5") {
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y|ee)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)o(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)w$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers2s, table N5
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y|ee)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers1p, table N5
    $rep=-1;
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(.*)([we])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(.*)([ay])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingEzafe, table N5
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*ee$/ && $r=~/^(.*)([we])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)o(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)w$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers1s, table N5
  } elsif ($t eq "v-aux") {
    $rep=-1;
    {if ($r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3sgPreterit, table v-aux
    $rep=-1;
    {if ($r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgPreIndNeg, table v-aux
  } elsif ($t eq "v26") {
    $rep=-1;
    {if ($r=~/^(.*)dašt$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v26
    $rep=-1;
    {if ($r=~/^(.*)dašt$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(.*)dašt$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgPreparfFam, table v26
    $rep=-1;
    {if ($r=~/^(.*)dašt$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(.*)dašt$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(.*)dašt$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgPreparfNegFam, table v26
  } elsif ($t eq "v11") {
    $rep=-1;
    {if ($r=~/^(..*)št$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v11
    $rep=-1;
    {if ($r=~/^(..*)št$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)št$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v11
  } elsif ($t eq "v28") {
    $rep=-1;
    {if ($r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v28
    $rep=-1;
    {if ($r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v28
  } elsif ($t eq "v27") {
    $rep=-1;
    {if ($r=~/^(.*)xwast$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3sgPreInd, table v27
  } elsif ($t eq "pref") {
    $rep=-1;
    {if ($r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag , table pref
  } elsif ($t eq "v3") {
    $rep=-1;
    {if ($r=~/^(..*)rd$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v3
    $rep=-1;
    {if ($r=~/^(..*)rd$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)rd$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v3
  } elsif ($t eq "N14") {
    $rep=-1;
    {if ($r=~/^(.*)(ŕb|fy|ŕr)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag PlurPers1p, table N14
  } elsif ($t eq "v19") {
    $rep=-1;
    {if ($r=~/^(..*)ft$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgPreSubjFFam, table v19
    $rep=-1;
    {if ($r=~/^(..*)ft$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)ft$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v19
  } elsif ($t eq "v25") {
    $rep=-1;
    {if ($r=~/^(.*)bwd$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3sgPreInd, table v25
    $rep=-1;
    {if ($r=~/^(.*)bwd$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(.*)bwd$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgPreIndNegLitt, table v25
  } elsif ($t eq "v10") {
    $rep=-1;
    {if ($r=~/^(..*)št$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v10
    $rep=-1;
    {if ($r=~/^(..*)št$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)št$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v10
  } elsif ($t eq "v7") {
    $rep=-1;
    {if ($r=~/^()(z|..*y)d$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v7
    $rep=-1;
    {if ($r=~/^()(z|..*y)d$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^()(z|..*y)d$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v7
  } elsif ($t eq "v20") {
    $rep=-1;
    {if ($r=~/^(..*)ft$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v20
    $rep=-1;
    {if ($r=~/^(..*)ft$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)ft$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v20
  } elsif ($t eq "v5") {
    $rep=-1;
    {if ($r=~/^(..*)ad$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v5
    $rep=-1;
    {if ($r=~/^(..*)ad$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)ad$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v5
  } elsif ($t eq "v23") {
    $rep=-1;
    {if ($r=~/^(..*)([dt])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v23
    $rep=-1;
    {if ($r=~/^(..*)([dt])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)([dt])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v23
  } elsif ($t eq "v9") {
    $rep=-1;
    {if ($r=~/^(..*)št$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v9
    $rep=-1;
    {if ($r=~/^(..*)št$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)št$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v9
  } elsif ($t eq "v24") {
    $rep=-1;
    {if ($r=~/^(..*)([dt])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v24
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r=~/^(..*)([dt])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(..*)([dt])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 1plPreSubj, table v24
    $rep=-1;
    {if ($r=~/^(..*)([dt])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)([dt])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v24
  } elsif ($t eq "inv") {
    $rep=-1;
    {if ($r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag , table inv
  } elsif ($t eq "v17") {
    $rep=-1;
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v17
    $rep=-1;
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v17
  } elsif ($t eq "N12") {
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y|ee)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)o(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)w$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers2s, table N12
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y|ee)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers3p, table N12
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*ee$/ && $r=~/^(.*)([we])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)o(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)w$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers1s, table N12
    $rep=-1;
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(.*)([we])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(.*)([ay])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingEzafe, table N12
  } elsif ($t eq "v12") {
    $rep=-1;
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v12
    $rep=-1;
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v12
  } elsif ($t eq "v29") {
    $rep=-1;
    {if ($r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v29
    $rep=-1;
    {if ($r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v29
  } elsif ($t eq "N1") {
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y|ee)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)o(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)w$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers2s, table N1
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y|ee)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers3p, table N1
    $rep=-1;
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(.*)([we])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(.*)([ay])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingEzafe, table N1
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*ee$/ && $r=~/^(.*)([we])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)o(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)w$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers1s, table N1
  } elsif ($t eq "v18") {
    $rep=-1;
    {if ($r=~/^(..*)ft$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v18
    $rep=-1;
    {if ($r=~/^(..*)ft$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)ft$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v18
  } elsif ($t eq "N15") {
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*[a]$/ && $r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^nya$/ && $r=~/^(.*)([awy])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^()nya$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^()(nya|.*e)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag PlurPers1p, table N15
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y|ee)$/ && $r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)o(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)w$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers2s, table N15
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y|ee)$/ && $r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers3p, table N15
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y)$/ && $r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*ee$/ && $r=~/^(.*)([we])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)o(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)w$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingPers1s, table N15
    $rep=-1;
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(.*)([we])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(.*)([ay])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag SingEzafe, table N15
    $rep=-1;
    {if ($r=~/^(..*)$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag Sing, table N15
  } elsif ($t eq "v8") {
    $rep=-1;
    {if ($r=~/^(..*)xt$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v8
    $rep=-1;
    {if ($r=~/^(..*)xt$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)xt$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v8
  } elsif ($t eq "ADJ") {
    $rep=-1;
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(.*)([we])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r=~/^(.*)([ay])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag Ezafe, table ADJ
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y|ee)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag Pers3p, table ADJ
    $rep=-1;
    if ($v=~/(^|:)c(:|$)/) {if ($r!~/^.*(a|y|ee)$/ && 1) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)([aw])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)v(:|$)/) {if ($r!~/^.*ae$/ && $r=~/^(.*)([ye])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($v=~/(^|:)o(:|$)/) {if ($r!~/^.*aw$/ && $r=~/^(.*)w$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag Pers2s, table ADJ
  } elsif ($t eq "v1") {
    $rep=-1;
    {if ($r=~/^(..*)yd$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v1
    $rep=-1;
    {if ($r=~/^(..*)yd$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)yd$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v1
  } elsif ($t eq "v14") {
    $rep=-1;
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v14
    $rep=-1;
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v14
  } elsif ($t eq "v2") {
    $rep=-1;
    {if ($r=~/^(..*)([nr])d$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v2
    $rep=-1;
    {if ($r=~/^(..*)([nr])d$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)([nr])d$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v2
  } elsif ($t eq "v22") {
    $rep=-1;
    {if ($r=~/^(..*)([dt])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v22
    $rep=-1;
    {if ($r=~/^(..*)([dt])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)([dt])$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v22
  } elsif ($t eq "v13") {
    $rep=-1;
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v13
    $rep=-1;
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v13
  } elsif ($t eq "v16") {
    $rep=-1;
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 2\*3plPastprog, table v16
    $rep=-1;
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    {if ($r=~/^(..*)st$/oi) {$rep=1;} elsif ($rep==-1) {$rep=0}}
    if ($rep == 0) {return 0} # tag 3sgImpCompNeg, table v16
  }
  return 1;
}

sub translitterate {
    $w=shift;
    return $w;}

sub detranslitterate {
    $w=shift;
    return $w;
}
sub fusion {
  my $s=shift;
  my $gotfusion=1;
  my $loopn=0;
  while ($gotfusion==1) {
    if ($loopn++>20) {die((" "x50)."Infinite loop detected on form $s        \n");};
    $gotfusion=0;
    if ($s=~s/([adđrzžw]) _/$1 /o) {$gotfusion=1} # rank = 0
    if ($s=~s/yd «/ /o) {$gotfusion=1} # rank = 1
    if ($s=~s/d :/ /o) {$gotfusion=1} # rank = 2
    if ($s=~s/rd ¨/ar /o) {$gotfusion=1} # rank = 3
    if ($s=~s/ad ~/ /o) {$gotfusion=1} # rank = 4
    if ($s=~s/ad °/y /o) {$gotfusion=1} # rank = 5
    if ($s=~s/wd #/a /o) {$gotfusion=1} # rank = 6
    if ($s=~s/wd §/ay /o) {$gotfusion=1} # rank = 7
    if ($s=~s/d ·/n /o) {$gotfusion=1} # rank = 8
    if ($s=~s/xt €/z /o) {$gotfusion=1} # rank = 9
    if ($s=~s/št »/r /o) {$gotfusion=1} # rank = 10
    if ($s=~s/št ≤/rd /o) {$gotfusion=1} # rank = 11
    if ($s=~s/št ↕/ys /o) {$gotfusion=1} # rank = 12
    if ($s=~s/st ↓/ /o) {$gotfusion=1} # rank = 13
    if ($s=~s/st ←/y /o) {$gotfusion=1} # rank = 14
    if ($s=~s/st ↑/e /o) {$gotfusion=1} # rank = 15
    if ($s=~s/st →/nd /o) {$gotfusion=1} # rank = 16
    if ($s=~s/st ©/ /o) {$gotfusion=1} # rank = 17
    if ($s=~s/st ¹/w /o) {$gotfusion=1} # rank = 18
    if ($s=~s/st ²/wy /o) {$gotfusion=1} # rank = 19
    if ($s=~s/st ³/wr /o) {$gotfusion=1} # rank = 20
    if ($s=~s/ft ¬/b /o) {$gotfusion=1} # rank = 21
    if ($s=~s/ft ¿/wb /o) {$gotfusion=1} # rank = 22
    if ($s=~s/t ×/ /o) {$gotfusion=1} # rank = 23
    if ($s=~s/ft ÷/wy /o) {$gotfusion=1} # rank = 24
    if ($s=~s/dad ↙/de /o) {$gotfusion=1} # rank = 25
    if ($s=~s/drwd ↙/drw /o) {$gotfusion=1} # rank = 26
    if ($s=~s/šnyd ↙/šnw /o) {$gotfusion=1} # rank = 27
    if ($s=~s/šnft ↙/šnw /o) {$gotfusion=1} # rank = 28
    if ($s=~s/dyd ↙/byn /o) {$gotfusion=1} # rank = 29
    if ($s=~s/zd ↙/zn /o) {$gotfusion=1} # rank = 30
    if ($s=~s/std ↙/stan /o) {$gotfusion=1} # rank = 31
    if ($s=~s/stand ↙/stan /o) {$gotfusion=1} # rank = 32
    if ($s=~s/šd ↙/šw /o) {$gotfusion=1} # rank = 33
    if ($s=~s/frwxt ↙/frwš /o) {$gotfusion=1} # rank = 34
    if ($s=~s/šnaxt ↙/šnas /o) {$gotfusion=1} # rank = 35
    if ($s=~s/afrašt ↙/afraz /o) {$gotfusion=1} # rank = 36
    if ($s=~s/ešt ↙/el /o) {$gotfusion=1} # rank = 37
    if ($s=~s/kšt ↙/kš /o) {$gotfusion=1} # rank = 38
    if ($s=~s/sršt ↙/srš /o) {$gotfusion=1} # rank = 39
    if ($s=~s/xast ↙/xyz /o) {$gotfusion=1} # rank = 40
    if ($s=~s/xwast ↙/xwae /o) {$gotfusion=1} # rank = 41
    if ($s=~s/ngryst ↙/ngr /o) {$gotfusion=1} # rank = 42
    if ($s=~s/gryst ↙/gry /o) {$gotfusion=1} # rank = 43
    if ($s=~s/škst ↙/škn /o) {$gotfusion=1} # rank = 44
    if ($s=~s/nšst ↙/nšyn /o) {$gotfusion=1} # rank = 45
    if ($s=~s/gsst ↙/gsl /o) {$gotfusion=1} # rank = 46
    if ($s=~s/gsyxt ↙/gsl /o) {$gotfusion=1} # rank = 47
    if ($s=~s/zyst ↙/zy /o) {$gotfusion=1} # rank = 48
    if ($s=~s/grft ↙/gyr /o) {$gotfusion=1} # rank = 49
    if ($s=~s/pđyrft ↙/pđyr /o) {$gotfusion=1} # rank = 50
    if ($s=~s/rft ↙/rw /o) {$gotfusion=1} # rank = 51
    if ($s=~s/xft ↙/xsb /o) {$gotfusion=1} # rank = 52
    if ($s=~s/awrd ↙/ar /o) {$gotfusion=1} # rank = 53
    if ($s=~s/šmrd ↙/šmr /o) {$gotfusion=1} # rank = 54
    if ($s=~s/sprd ↙/spr /o) {$gotfusion=1} # rank = 55
    if ($s=~s/gđašt ↙/đar /o) {$gotfusion=1} # rank = 56
    if ($s=~s/palwd ↙/pala /o) {$gotfusion=1} # rank = 57
    if ($s=~s/jst ↙/jw /o) {$gotfusion=1} # rank = 58
    if ($s=~s/dwxt ↙/dwš /o) {$gotfusion=1} # rank = 59
    if ($s=~s/krd ↙/kn /o) {$gotfusion=1} # rank = 60
    if ($s=~s/mrd ↙/myr /o) {$gotfusion=1} # rank = 61
    if ($s=~s/neft ↙/nenb /o) {$gotfusion=1} # rank = 62
    if ($s=~s/gft ↙/g /o) {$gotfusion=1} # rank = 63
    if ($s=~s/ršt ↙/rys /o) {$gotfusion=1} # rank = 64
    if ($s=~s/čyd ↙/čyn /o) {$gotfusion=1} # rank = 65
    if ($s=~s/kšt ↙/kar /o) {$gotfusion=1} # rank = 66
    if ($s=~s/dad £/d /o) {$gotfusion=1} # rank = 67
    if ($s=~s/šd £/š /o) {$gotfusion=1} # rank = 68
    if ($s=~s/nšst £/šyn /o) {$gotfusion=1} # rank = 69
    if ($s=~s/rft £/r /o) {$gotfusion=1} # rank = 70
    if ($s=~s/gft £/g /o) {$gotfusion=1} # rank = 71
    if ($s=~s/awrd £/ar /o) {$gotfusion=1} # rank = 72
    if ($s=~s/gđašt £/đar /o) {$gotfusion=1} # rank = 73
    if ($s=~s/jst £/jwr /o) {$gotfusion=1} # rank = 74
    if ($s=~s/šst £/šwr /o) {$gotfusion=1} # rank = 75
    if ($s=~s/kšt £/kar /o) {$gotfusion=1} # rank = 76
    if ($s=~s/xft £/xb /o) {$gotfusion=1} # rank = 77
    if ($s=~s/āmd ♣/ā /o) {$gotfusion=1} # rank = 78
    if ($s=~s/āmd ♠/āy /o) {$gotfusion=1} # rank = 79
    if ($s=~s/gft ♣/gw /o) {$gotfusion=1} # rank = 80
    if ($s=~s/gft ♠/gwy /o) {$gotfusion=1} # rank = 81
    if ($s=~s/awmd ♣/ā /o) {$gotfusion=1} # rank = 82
    if ($s=~s/awmd ♠/āy /o) {$gotfusion=1} # rank = 83
    if ($s=~s/bwd ♫/baš /o) {$gotfusion=1} # rank = 84
    if ($s=~s/bwd ♪/est /o) {$gotfusion=1} # rank = 85
    if ($s=~s/bwd ►/bad /o) {$gotfusion=1} # rank = 86
    if ($s=~s/bwd ◄/nyst /o) {$gotfusion=1} # rank = 87
    if ($s=~s/dašt ♦/dar /o) {$gotfusion=1} # rank = 88
    if ($s=~s/xwast ☼/xwae /o) {$gotfusion=1} # rank = 89
    if ($s=~s/krd ¢/kn /o) {$gotfusion=1} # rank = 90
    if ($s=~s/šd ¢/šw /o) {$gotfusion=1} # rank = 91
    if ($s=~s/kšyd ¢/kn /o) {$gotfusion=1} # rank = 92
    if ($s=~s/dad ¢/de /o) {$gotfusion=1} # rank = 93
    if ($s=~s/zd ¢/zn /o) {$gotfusion=1} # rank = 94
    if ($s=~s/d ¢/ /o) {$gotfusion=1} # rank = 95
    if ($s=~s/xt ¢/z /o) {$gotfusion=1} # rank = 96
    if ($s=~s/st ¢/nd /o) {$gotfusion=1} # rank = 97
    if ($s=~s/dad √/d /o) {$gotfusion=1} # rank = 98
    if ($s=~s/st ∆/ /o) {$gotfusion=1} # rank = 99
  }
  return $s;
}
sub rev_fusion {
  my $orig=shift;
  my $realorig=shift;
  $_=$orig;
  my $level=shift;
  my $result=shift;
  my $pos=shift;
  my $fusionok=shift;
  my $firstrank=(shift || 100000);
  if ($_!~/ /) {die "Error: input of rev_fusion ($_) must have a split mark"}
    if ((!defined($result->{$_}) && ($fusionok || (&fusion($_."\t") eq $realorig."\t"))) || $result->{$_}>$pos) {
       if (defined($terms{$2})) {$result->{$_}=$pos}
       $fusionok=1;
    }
  if (s/([adđrzžw]) /$1 _/o) {
    $locfusionok=($fusionok || (&fusion($_."\t") eq $realorig."\t"));
    if ($locfusionok) {
       if (defined($terms{$2})) {$result->{$_}++}
    }
    if ($level>1) {&rev_fusion($_,$realorig,$level-1,$result,$pos,$locfusionok,10000)}
    $_=$orig;
  }
  return 1;
}
push(@rev_in,qr/([adđrzžw]) /o);  # 0
push(@rev_out,"\"\$1 _\"");
sub new_rev_fusion {
  my $orig=shift;
  my $realorig=shift;
  $_=$orig;
  my $level=shift;
  my $result=shift;
  my $pos=shift;
  my $fusionok=shift;
  my $firstrank=(shift || 0);
  if ($_!~/ /) {die "Error: input of rev_fusion ($_) must have a split mark"}
  if ((!defined($result->{$_}) && ($fusionok || (&fusion($_."\t") eq $realorig."\t"))) || $result->{$_}>$pos) {
     / ([^ ]*)$/;
     if (defined($terms{$1})) {$result->{$_}=$pos}
     $fusionok=1;
  }
  for my $fr (0..$#rev_in_final) {
    if ($firstrank<$fr && s/$rev_in_final[$fr]/$rev_out_final[$fr]/ee) {
      $locfusionok=($fusionok || (&fusion($_."\t") eq $realorig."\t"));
      if ($locfusionok) {
        / ([^ ]*)$/;
        if (defined($terms{$1})) {$result->{$_}++}
      }
      if ($level>1) {&rev_fusion($_,$realorig,$level-1,$result,$pos,$locfusionok,$fr)}
      $_=$orig;
    }
  }
  for my $fr (0..$#rev_in) {
    if ($firstrank>$fr && s/$rev_in[$fr]/$rev_out[$fr]/ee) {
      $locfusionok=($fusionok || (&fusion($_."\t") eq $realorig."\t"));
      if ($locfusionok) {
        / ([^ ]*)$/;
        if (defined($terms{$1})) {$result->{$_}++}
      }
      if ($level>1) {&rev_fusion($_,$realorig,$level-1,$result,$pos,$locfusionok,10000)}
      $_=$orig;
    }
  }
  return 1;
}
sub compute_possible_splits {
  $_=shift;
  $_=&translitterate($_);
  my $orig=$_;
  my $possible_splits=shift;
  my $length=length($orig);
  for $pos (0..$length) {
      substr($_,$pos,0)=" ";
      &rev_fusion($_,$_,4,$possible_splits,$pos,0);
      $_=$orig;
  }
  my $fus;
  for (keys %$possible_splits) {
    $fus=&remove_sep(&fusion($_."\t"));
    if ($fus ne $orig."\t") {
       delete($possible_splits->{$_});
    }
  }
  return 1;
}
sub try_to_lemmatize {
  my $w=shift;
  my $cat=shift;
  my $table=shift;
  my $v=shift;
  my $o=$w;
  @possible_results=();
  if (0) {
  } elsif ($cat eq "v4") {
    if (0) {
    } elsif ($table eq "v4") {
      if ($w=~s/^(..*)ad n$/$1ad\tv4/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v21") {
    if (0) {
    } elsif ($table eq "v21") {
      if ($w=~s/^(..*)ft n$/$1ft\tv21/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "N2") {
    if (0) {
    } elsif ($table eq "N2") {
      if ($w=~s/^(.*) $/$1\tN2/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v15") {
    if (0) {
    } elsif ($table eq "v15") {
      if ($w=~s/^(..*)st n$/$1st\tv15/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "ADV1") {
    if (0) {
    } elsif ($table eq "ADV1") {
      if ($w=~s/^(.*) $/$1\tADV1/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "N8") {
    if (0) {
    } elsif ($table eq "N8") {
      if ($w=~s/^(.*) t$/$1\tN8/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "ADJ_ORD") {
    if (0) {
    } elsif ($table eq "ADJ_ORD") {
      if ($w=~s/^(.*) $/$1\tADJ_ORD/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "N5") {
    if (0) {
    } elsif ($table eq "N5") {
      if ($w=~s/^(.*) $/$1\tN5/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v6") {
    if (0) {
    } elsif ($table eq "v6") {
      if ($w=~s/^(..*)wd n$/$1wd\tv6/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v26") {
    if (0) {
    } elsif ($table eq "v26") {
      if ($w=~s/^(.*)dašt n$/$1dašt\tv26/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v11") {
    if (0) {
    } elsif ($table eq "v11") {
      if ($w=~s/^(..*)št n$/$1št\tv11/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v28") {
    if (0) {
    } elsif ($table eq "v28") {
      if ($w=~s/^(..*) n$/$1\tv28/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v27") {
    if (0) {
    } elsif ($table eq "v27") {
      if ($w=~s/^(.*)xwast n$/$1xwast\tv27/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "pref") {
    if (0) {
    } elsif ($table eq "pref") {
      if ($w=~s/^(..*) _$/$1\tpref/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v") {
    if (0) {
    } elsif ($table eq "v-aux") {
      if ($w=~s/^(..*) n$/$1\tv-aux/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v3") {
    if (0) {
    } elsif ($table eq "v3") {
      if ($w=~s/^(..*)rd n$/$1rd\tv3/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v19") {
    if (0) {
    } elsif ($table eq "v19") {
      if ($w=~s/^(..*)ft n$/$1ft\tv19/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "N14") {
    if (0) {
    } elsif ($table eq "N14") {
      if ($w=~s/^(.*)(ŕb|fy|ŕr) ź$/$1$2\tN14/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v25") {
    if (0) {
    } elsif ($table eq "v25") {
      if ($w=~s/^(.*)bwd n$/$1bwd\tv25/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v10") {
    if (0) {
    } elsif ($table eq "v10") {
      if ($w=~s/^(..*)št n$/$1št\tv10/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v7") {
    if (0) {
    } elsif ($table eq "v7") {
      if ($w=~s/^()(z|..*y)d n$/$1$2d\tv7/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v20") {
    if (0) {
    } elsif ($table eq "v20") {
      if ($w=~s/^(..*)ft n$/$1ft\tv20/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v5") {
    if (0) {
    } elsif ($table eq "v5") {
      if ($w=~s/^(..*)ad n$/$1ad\tv5/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v23") {
    if (0) {
    } elsif ($table eq "v23") {
      if ($w=~s/^(..*)([dt]) n$/$1$2\tv23/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v9") {
    if (0) {
    } elsif ($table eq "v9") {
      if ($w=~s/^(..*)št n$/$1št\tv9/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v24") {
    if (0) {
    } elsif ($table eq "v24") {
      if ($w=~s/^(..*)([dt]) n$/$1$2\tv24/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "inv") {
    if (0) {
    } elsif ($table eq "inv") {
      if ($w=~s/^(..*) $/$1\tinv/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v17") {
    if (0) {
    } elsif ($table eq "v17") {
      if ($w=~s/^(..*)st n$/$1st\tv17/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "N12") {
    if (0) {
    } elsif ($table eq "N12") {
      if ($w=~s/^(.*) $/$1\tN12/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v12") {
    if (0) {
    } elsif ($table eq "v12") {
      if ($w=~s/^(..*)st n$/$1st\tv12/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v29") {
    if (0) {
    } elsif ($table eq "v29") {
      if ($w=~s/^(..*) n$/$1\tv29/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "N1") {
    if (0) {
    } elsif ($table eq "N1") {
      if ($w=~s/^(.*) $/$1\tN1/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v18") {
    if (0) {
    } elsif ($table eq "v18") {
      if ($w=~s/^(..*)ft n$/$1ft\tv18/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "ADV2") {
    if (0) {
    } elsif ($table eq "ADV2") {
      if ($w=~s/^(.*) a˝$/$1\tADV2/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
      if ($w=~s/^(.*) a$/$1\tADV2/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "N6") {
    if (0) {
    } elsif ($table eq "N6") {
      if ($w=~s/^(.*) e$/$1\tN6/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "N15") {
    if (0) {
    } elsif ($table eq "N15") {
      if ($w=~s/^(..*) $/$1\tN15/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v8") {
    if (0) {
    } elsif ($table eq "v8") {
      if ($w=~s/^(..*)xt n$/$1xt\tv8/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "ADJ") {
    if (0) {
    } elsif ($table eq "ADJ") {
      if ($w=~s/^(.*) $/$1\tADJ/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v1") {
    if (0) {
    } elsif ($table eq "v1") {
      if ($w=~s/^(..*)yd n$/$1yd\tv1/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v14") {
    if (0) {
    } elsif ($table eq "v14") {
      if ($w=~s/^(..*)st n$/$1st\tv14/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v2") {
    if (0) {
    } elsif ($table eq "v2") {
      if ($w=~s/^(..*)([nr])d n$/$1$2d\tv2/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v13") {
    if (0) {
    } elsif ($table eq "v13") {
      if ($w=~s/^(..*)st n$/$1st\tv13/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v22") {
    if (0) {
    } elsif ($table eq "v22") {
      if ($w=~s/^(..*)([dt]) n$/$1$2\tv22/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  } elsif ($cat eq "v16") {
    if (0) {
    } elsif ($table eq "v16") {
      if ($w=~s/^(..*)st n$/$1st\tv16/o) {
        if (1) {
          push(@possible_results,"$w".sortvlist($v.""));
        }
        $w=$o;
      }
    }
  }
  return @possible_results;
}
sub lemmatize {
  my $w=shift;
  my $cat=shift;
  my $t=shift;
  my $v=shift;
  my $rads=shift;
  my $die_if_pb=shift;
  my @possible_lemmas=();
  my $length;
  if (!$rads) {
    my %possible_splits=();
    my $origw=$w;
    my $lnumber=0;
    for $pos (0..length($origw)) {
#        substr($w,length($origw)-$pos,0)=" ";
        $length = length($origw)-$pos; $w =~ s/^(.{$length})/\1 /;
        $w=&translitterate($w);
        &rev_fusion($w,$w,2,\%possible_splits,$pos,0);
        for (keys %possible_splits) {
            @_=&try_to_lemmatize($_,$cat,$t,$v);
            if ($#_ >= 0) {push(@possible_lemmas,@_);}
        }
        $lnumber=$#possible_lemmas+1;
#        if ($lnumber>1) {return &detranslitterate($origw)."	<error[$lnumber:".join(",",@possible_lemmas)."]>\n";}
        if ($lnumber >= 1) {last;} # $w=~s/^([^	]+):(?=.)/$1/;
        else {$w=$origw;%possible_splits=();}
    }
    if ($lnumber==0) {
      if ($die_if_pb) {return &detranslitterate($origw)."	<error[$lnumber]>\n";}
    }
  } else {
    push(@possible_lemmas,$w."\t".$t);
  }
  return @possible_lemmas;
}
sub compute_canonical_forms {
  my $r=shift;
  my $cat=shift;
  my $t=shift;
  my $v=shift;
  my @result;
  my $pushedsomething;
  my $oldr=$r;
  if ($v =~ /^[^:]/) {$v=":".$v}
  my $oldv=$v;
  if (0) {
  } elsif ($cat eq "v4") {
      if (0) {
      } elsif ($t eq "v4") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v21") {
      if (0) {
      } elsif ($t eq "v21") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "N2") {
      if (0) {
      } elsif ($t eq "N2") {
        if ( $r=~s/(.*)$/ $1 \tSing/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v15") {
      if (0) {
      } elsif ($t eq "v15") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "ADV1") {
      if (0) {
      } elsif ($t eq "ADV1") {
        if ( $r=~s/(.*)$/ $1 \t/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "N8") {
      if (0) {
      } elsif ($t eq "N8") {
        if ( $r=~s/(.*)$/ $1 t\tSing/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "ADJ_ORD") {
      if (0) {
      } elsif ($t eq "ADJ_ORD") {
        if ( $r=~s/(.*)$/ $1 \tORD/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "N5") {
      if (0) {
      } elsif ($t eq "N5") {
        if ( $r=~s/(.*)$/ $1 \tSing/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v6") {
      if (0) {
      } elsif ($t eq "v6") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v26") {
      if (0) {
      } elsif ($t eq "v26") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v11") {
      if (0) {
      } elsif ($t eq "v11") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v28") {
      if (0) {
      } elsif ($t eq "v28") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v27") {
      if (0) {
      } elsif ($t eq "v27") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "pref") {
      if (0) {
      } elsif ($t eq "pref") {
        if ( $r=~s/(.*)$/ $1 _\t/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v") {
      if (0) {
      } elsif ($t eq "v-aux") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v3") {
      if (0) {
      } elsif ($t eq "v3") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v19") {
      if (0) {
      } elsif ($t eq "v19") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "N14") {
      if (0) {
      } elsif ($t eq "N14") {
        if ( $r=~s/(.*)$/ $1 ź\tSing/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v25") {
      if (0) {
      } elsif ($t eq "v25") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v10") {
      if (0) {
      } elsif ($t eq "v10") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v7") {
      if (0) {
      } elsif ($t eq "v7") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v20") {
      if (0) {
      } elsif ($t eq "v20") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v5") {
      if (0) {
      } elsif ($t eq "v5") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v23") {
      if (0) {
      } elsif ($t eq "v23") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v9") {
      if (0) {
      } elsif ($t eq "v9") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v24") {
      if (0) {
      } elsif ($t eq "v24") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "inv") {
      if (0) {
      } elsif ($t eq "inv") {
        if ( $r=~s/(.*)$/ $1 \t/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v17") {
      if (0) {
      } elsif ($t eq "v17") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "N12") {
      if (0) {
      } elsif ($t eq "N12") {
        if ( $r=~s/(.*)$/ $1 \tSing/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v12") {
      if (0) {
      } elsif ($t eq "v12") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v29") {
      if (0) {
      } elsif ($t eq "v29") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "N1") {
      if (0) {
      } elsif ($t eq "N1") {
        if ( $r=~s/(.*)$/ $1 \tSing/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v18") {
      if (0) {
      } elsif ($t eq "v18") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "ADV2") {
      if (0) {
      } elsif ($t eq "ADV2") {
        if ( $r=~s/(.*)$/ $1 a˝\t/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ( $r=~s/(.*)$/ $1 a\t/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "N6") {
      if (0) {
      } elsif ($t eq "N6") {
        if ( $r=~s/(.*)$/ $1 e\tSing/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "N15") {
      if (0) {
      } elsif ($t eq "N15") {
        if ( $r=~s/(.*)$/ $1 \tSing/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v8") {
      if (0) {
      } elsif ($t eq "v8") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "ADJ") {
      if (0) {
      } elsif ($t eq "ADJ") {
        if ( $r=~s/(.*)$/ $1 \t/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v1") {
      if (0) {
      } elsif ($t eq "v1") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v14") {
      if (0) {
      } elsif ($t eq "v14") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v2") {
      if (0) {
      } elsif ($t eq "v2") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v13") {
      if (0) {
      } elsif ($t eq "v13") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v22") {
      if (0) {
      } elsif ($t eq "v22") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  } elsif ($cat eq "v16") {
      if (0) {
      } elsif ($t eq "v16") {
        if ( $r=~s/(.*)$/ $1 n\t\*10\*inf/o) {
          $r=&fusion($r);
          $r=~s/\t.*$//;
          push(@result,"$r\t$t$v");
          $pushedsomething=1;
          $r=$oldr; $v=$oldv
        }
        if ($pushedsomething) {return \@result}
    }
  }
  return @result;
}
sub sortvlist {
    my $vl=shift;
    $vl=~s/^://;
    if ($vl eq "") {return ""}
    $vl=":".join(":",sort split(/:/,$vl));
    while ($vl=~s/(:[^:]+)\1/\1/) {}
    return $vl;
}
sub remove_sep {
  my $r=shift;
#  if ($r=~/_.*_.*_/ && $r!~/ /) {
#    $r=~s/^([^_]*)_/\1/;
#    $r=~s/_([^_]*)$/\1/;
#  } else {
#    while ($r=~s/^(.*[^_])_([^_]|\t|$)/$1$2/ || $r=~s/__\t/_\t/ || $r=~s/^_//) {}
#  }
  $r =~ s/ //g;
  return $r;
}
1;
