set terminal postscript enhanced eps color solid
set output 'speedfit.eps'


f(x)=1-1/exp(a*x*sqrt(x))
g(x)=1-1/exp(b*x*x*sqrt(x))

a=0.11798
b=0.0058637

set xrange [0:35]
set yrange [0:1]

set key spacing 1.5
set key center at 20,0.4
set grid

set xlabel "speed(m/s)"
set ylabel "frequency"
plot 'speed0.txt' u 1:4 w lp ps 0.5 pt 1 lc 5 t 'distribution of average speed for vacant status',\
'speed1.txt' u 1:4 w lp ps 0.5 pt 6 lc 6 t 'distribution average speed for occupied status',\
f(x) lw 5 lc 12 t 'f(x)=1-{1/e^{0.117x^{1.5}}}',\
g(x) lw 5 lc 10 t 'g(x)=1-1/e^{0.00586x^{2.5}}'


set output
set term wxt