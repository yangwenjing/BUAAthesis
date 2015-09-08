set terminal postscript eps color solid lw 0.5
set output '201103event=0_1_2parameter.eps'
set xlabel "Duration(s)"
set ylabel "Probability"
set yrange [0:1]
set xrange[20:5000]
set key center at 3500,0.4
set key box
set grid
e=-0.00217593
a=0.971101
e2 =-0.00103644
a2=0.988955

f(x)=a-exp(e*x)
g(x)=a2-exp(e2*x)
plot '20110303event=0.txt' using 1:4 w p lc 11 pt 11  t '2011/03/03, vacant status',\
'20110304event=0.txt'  using 1:4 w p lc 11 pt 11   t '2011/03/04, vacant status', \
'20110305event=0.txt'  using 1:4 w p lc 11 pt 11   t '2011/03/05, vacant status',\
'20110306event=0.txt' using 1:4  w p lc 11 pt 11   t '2011/03/06, vacant status',\
'20110307event=0.txt' using 1:4  w p lc 11 pt 11   t '2011/03/07, vacant status',\
'20110303event=1.txt'  using 1:4 w p lc 13 pt 7  t  '2011/03/03, occupied status',\
'20110304event=1.txt' using 1:4  w p lc 13 pt 7  t  '2011/03/04, occupied status',\
'20110305event=1.txt' using 1:4  w p lc 13 pt 7  t  '2011/03/05, occupied status',\
'20110306event=1.txt'  using 1:4 w p lc 13 pt 7  t  '2011/03/06, occupied status',\
'20110307event=1.txt' using 1:4  w p lc 13 pt 7  t '2011/03/07, occupied status', \
f(x) w l lc 10 lw 10 t 'fit result for vacant status', \
g(x) w l lc 7 lw 10 t 'fit result for occupied status'
set output
set term wxt


