f(1) = fopen('/users/start2012/r0288315/Desktop/cdssetup/outphasing/lut/veriloga/d1.dat','w');
f(2) = fopen('/users/start2012/r0288315/Desktop/cdssetup/outphasing/lut/veriloga/d2.dat','w');
f(3) = fopen('/users/start2012/r0288315/Desktop/cdssetup/outphasing/lut/veriloga/d3.dat','w');
f(4) = fopen('/users/start2012/r0288315/Desktop/cdssetup/outphasing/lut/veriloga/d4.dat','w');
f(5) = fopen('/users/start2012/r0288315/Desktop/cdssetup/outphasing/lut/veriloga/d5.dat','w');
f(6) = fopen('/users/start2012/r0288315/Desktop/cdssetup/outphasing/lut/veriloga/d6.dat','w');
f(7) = fopen('/users/start2012/r0288315/Desktop/cdssetup/outphasing/lut/veriloga/d7.dat','w');
f(8) = fopen('/users/start2012/r0288315/Desktop/cdssetup/outphasing/lut/veriloga/d8.dat','w');
f(9) = fopen('/users/start2012/r0288315/Desktop/cdssetup/outphasing/lut/veriloga/d9.dat','w');

for t=0:1/64:1
    t2=fi(t,0,9,6);
    t2=t2.bin;
    sum = 0;
    for i=1:9
        sum = sum +(t2(i) - '0')*2^(9-i);
    end
    for i=1:9
        fprintf(f(i), '%d  ', sum);
    end
    a = acos(t);
    a = fi(a,0,9,8);
    a = a.bin;
    for i=1:9
        fprintf(f(i),'%f ', (a(i)-'0')*0.9);
    end
    for i=1:9 
        fprintf(f(i),'\n');
    end
end
