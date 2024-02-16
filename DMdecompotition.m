function [B P Q p q]=DMdecompotition(A)
[n m]=size(A);
A(A==-inf)=0;
[p q]=dmperm(A);
A(A==0)=-inf;
B=A(p,q);
p
q
P=rowpermutation(p,B);
Q=columnpermutation(q,B);
