f = fopen('testvector.txt','w');
f2 = fopen('ans.txt','w');
for i = 1:100
   a = randi([0,256],1);
   b = randi([0,256],1);
%    % adder
%    c = a+b;
%    c1 = fi(c,0,9,0);
   % subtractor
   c = a+b;
   c1 = fi(c,0,9,0);
   c1 = c1.bin;
   fprintf(f2,'%s\n',c1);
   a1 = fi(a,0,9,0);
   a1 = a1.bin;
   fprintf(f,'%s ',a1);
   b1 = fi(b,0,9,0);
   b1 = b1.bin;
   fprintf(f,'%s\n',b1);
end
