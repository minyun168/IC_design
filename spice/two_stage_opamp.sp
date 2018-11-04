*ota
.lib 'mix025_1.l' tt
*.param curr=30u
.param com=0.76 
vd vdd 0 dc 2.5v
*v2 in2 0 0
*v2 in1 out dc 1.25v ac 0.5
v1 in1 0 dc com ac 0.5
v2 in2 d2 dc com ac 0.5
v5 g5 0 5v
*main circuit
m1 d1 in1 d5 0 nch w=3u l=1u
m2 d2 in2 d5 0 nch w=3u l=1u
m3 d1 d1 vdd vdd pch w=5u l=1u
m4 d2 d1 vdd vdd pch w=5u l=1u
m5 d5 g5 0 0 nch w=4.5u l=1u

cc d2 0 10p
*   1 out 0 10p
*what to do
*.dc com 0 2.5 0.01
.ac dec 10 1k 20G
*sweep curr 1u 30u 1u
*out
.print vdb(d2)
.end

