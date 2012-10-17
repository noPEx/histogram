#! /usr/bin/gnuplot
#This plots frequency using a text file which has only one column of values
clear
reset
set term png
set output 'frequency_original.png'
set multiplot
set title 'Matching score distributions for original matching scores'
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

plot  'FF_orig.txt' using (rounded($1)):(1) smooth frequency with boxes title 'FF original',   'FL_orig.txt'     using (rounded($1)):(1) smooth frequency with boxes title 'FS original', 'FS_orig.txt'   using (rounded($1)):(1) smooth frequency with boxes title 'FS original', 'LF_orig.txt'  using (rounded($1)):(1) smooth frequency with boxes title 'LF original', 'LL_orig.txt' using (rounded($1)):(1) smooth frequency with boxes title 'LL original', 'LS_orig.txt'   using (rounded($1)):(1) smooth frequency with boxes title 'LS original', 'SF_orig.txt'   using (rounded($1)):(1) smooth frequency with boxes title 'SF original',  'SL_orig.txt'  using (rounded($1)):(1) smooth frequency with boxes title 'SL original', 'SS_orig.txt'   using (rounded($1)):(1) smooth frequency with boxes title 'SS original'









