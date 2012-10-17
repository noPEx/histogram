#! /usr/bin/gnuplot
#This plots frequency using a text file which has only one column of values
clear
reset
set term png
set output 'frequency_normalized_comparison.png'
set multiplot
set title 'Matching score distributions for norminal matching scores'
set key off
set border 3

# Add a vertical dotted line at x=0 to show centre (mean) of distribution.
set yzeroaxis

# Each bar is half the (visual) width of its x-range.
set boxwidth 0.05 absolute
set style fill solid 1.0 noborder

bin_width = 0.01;

bin_number(x) = floor(x/bin_width)

rounded(x) = bin_width * ( bin_number(x) + 0.5 )

plot  'FF_norm.txt' using (rounded($1)):(1) smooth frequency with boxes title 'FF norm',   'FL_norm.txt'     using (rounded($1)):(1) smooth frequency with boxes title 'FS norm', 'FS_norm.txt'   using (rounded($1)):(1) smooth frequency with boxes title 'FS norm', 'LF_norm.txt'  using (rounded($1)):(1) smooth frequency with boxes title 'LF norm', 'LL_norm.txt' using (rounded($1)):(1) smooth frequency with boxes title 'LL norm', 'LS_norm.txt'   using (rounded($1)):(1) smooth frequency with boxes title 'LS norm', 'SF_norm.txt'   using (rounded($1)):(1) smooth frequency with boxes title 'SF norm',  'SL_norm.txt'  using (rounded($1)):(1) smooth frequency with boxes title 'SL norm', 'SS_norm.txt'   using (rounded($1)):(1) smooth frequency with boxes title 'SS norm'









