f=fopen('testvector.txt','w');
p = pi/3;
i = [0:0.1:0.7]*cos(pi/3);
q = [0:0.1:0.7]*sin(pi/3);

for j=1:8
    a = fi(i(j),1,9,7);
    fprintf(f,'%s   ',a.bin);
    b = fi(q(j),1,9,7); 
    fprintf(f,'%s\n',b.bin);
end