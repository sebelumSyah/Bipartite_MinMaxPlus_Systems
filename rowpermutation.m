function [P]= rowpermutation (p,A)
[m n]=size(A);
[nx,ny]= size(p);
P=zerosmaxplus(m,m);
for i =1:ny
    P(i,p(1,i))=0;
end

for i=1:m
    for j=1:m
        if max(P(:,i))==-inf && max(P(j,:))==-inf
            P(j,i)=0;
        end
    end
end
