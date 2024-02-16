function A=randomMatrixMaxPlus(n,m,dens)
 A=sprand(n,m,dens);
 A(A==0)=-inf;
 A=round(100*A);
 A=full(A);
 [n m]=size(A);
 for i=1:n
     if max(A(i,:))==-inf
         A(i,randi([1,m],1))=randi([1,10],1);
     end
 end
