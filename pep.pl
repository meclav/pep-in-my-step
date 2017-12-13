#!/usr/bin/perl
use Mojolicious::Lite;

my $l= <<'END';
man in my plan
car in my star
law in my draw
lot in my spot
lot in my shot
top in my shop
lot in my plot
fan in my plan
lot in my scot
lot in my knot
pub in my club
ban in my plan
van in my plan
pan in my plan
can in my plan
bar in my star
bed in my shed
pop in my shop
row in my show
top in my crop
top in my drop
top in my stop
lip in my ship
cow in my show
lip in my trip
cat in my flat
row in my flow
bow in my show
rug in my drug
mug in my drug
jar in my star
hat in my flat
mum in my drum
win in my skin
lip in my chip
tin in my skin
tip in my ship
row in my snow
bag in my flag
sin in my skin
row in my blow
vat in my flat
rat in my flat
pin in my skin
hip in my ship
fat in my flat
tip in my trip
lip in my grip
bin in my skin
pot in my spot
row in my brow
bat in my flat
cow in my flow
pot in my shot
lip in my slip
map in my chap
hip in my trip
map in my trap
kid in my grid
sum in my drum
dot in my spot
bow in my flow
tip in my chip
dot in my shot
gap in my chap
gap in my trap
cow in my snow
win in my twin
hip in my chip
pop in my crop
tin in my twin
pot in my plot
pop in my drop
tip in my grip
cow in my blow
bid in my grid
pop in my stop
sin in my twin
cap in my chap
bow in my snow
win in my chin
pot in my scot
cap in my trap
tip in my slip
tin in my chin
pin in my twin
red in my shed
win in my grin
pot in my knot
dot in my plot
hip in my grip
bin in my twin
bow in my blow
tin in my grin
cow in my brow
tap in my chap
lap in my chap
sin in my chin
tap in my trap
lap in my trap
dot in my scot
jaw in my draw
sin in my grin
hip in my slip
pin in my chin
dot in my knot
bin in my chin
lid in my grid
pin in my grin
bow in my brow
fur in my spur
bin in my grin
END

my @sayings = split "\n", $l;

my $f = <<END ;
Caveat
Sacramento
Itim
Allura
Niconne
Yesteryear
END

my @fonts = split "\n", $f;


get '/' => sub {
	srand;
	my $i = int rand @sayings;
	my $j = $i;
	do {$j = rand @sayings} while ($i == $j);

	shift -> render( m1=> $sayings[$i], m2=>$sayings[$j], font=>@fonts[rand @fonts]);
};

app->start;
__DATA__

@@ .html.ep
<!DOCTYPE html>
<html><head>
<title><3</title>
<link rel="stylesheet" href="foundation.css">
<style>
.hero {
  height: 100vh;
  text-align: center;
  display: flex;
  align-items: center;
  justify-content: center;
}
.text-cursive {
	font-family: "<%= $font %>", cursive;
}
</style>
<link href="https://fonts.googleapis.com/css?family=<%= $font %>" rel="stylesheet">
</head>
<body>
<section class="hero">
<div class="grid-x align-middle" >
 <div class="small-6 cell">
	 <img src='little-my.png' >
 </div>
 <div class="small-6 text-right cell">
	 <h1 class="text-cursive">
		 Walking along
	 </h1>
	 <br/>
	 <h3 class="text-cursive">
		 with a
	 </h3>
	 <h1 class="text-cursive">
		 <%= $m1 %>
	 </h1>
	 <h3 class="text-cursive">
		 and a
	 </h3>
	 <h1 class="text-cursive">
		 <%= $m2 %>
	 </h1>
 </div>
 </div>
</section>
</body>
</html>
