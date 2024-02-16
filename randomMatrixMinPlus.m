function B=randomMatrixMinPlus(n,m,dens)
 A=sprand(n,m,dens);
 A(A==0)=inf;
 A=round(100*A);
 B=full(A);
 for i=1:n
     if min(B(i,:))==inf
         B(i,randi([1,m],1))=randi([1,10],1);
     end
 end