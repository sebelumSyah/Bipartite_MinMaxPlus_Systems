function [Q]= columnpermutation(q,A)
[m n]=size(A);
[nx,ny]=size(q);
Q=zerosmaxplus(n,n);
for i =1:ny
    Q(q(1,i),i)=0;
end
for i=1:n
    for j=1:n
        if max(Q(i,:))==-inf && max(Q(:,j))==-inf
            Q(i,j)=0;
        end
    end
end
