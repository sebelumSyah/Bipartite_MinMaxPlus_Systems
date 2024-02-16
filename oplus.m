function C=oplus(A,B)
[n1 m1]=size(A);
[n2 m2]=size(B);
 
if n1==n2 && m1==m2
    if n1==1 && n2==1
        C=max(A,B);
    else
        C=[];
        for i=1:n1
            for j=1:m1
                C(i,j)=max(A(i,j),B(i,j));
            end
        end
    end
elseif n1==1 && m1==1
    C=zeros(n2,m2);
    for i=1:n2
        for j=1:m2
            C(i,j)=max(A(1,1),B(i,j));
        end
    end
else
    C='Ukuran tidak sama';
end