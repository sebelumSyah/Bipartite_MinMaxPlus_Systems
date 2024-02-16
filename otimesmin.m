function C=otimesmin(A,B)
[n1 m1]=size(A);
[n2 m2]=size(B);

if m1==n2
    if n1*m1==1 && n2*m2==1
        C=A+B;
    else
        C=zerosminplus(n1,m2);
        for i=1:n1
            for j=1:m2
                for k=1:m1
                    C(i,j)=min(C(i,j),A(i,k)+B(k,j));
                end
            end
        end
    end
elseif n1==1 && m1==1
    C=zeros(n2,m2);
    for i=1:n2
        for j=1:m2
            C(i,j)=A(1,1)+B(i,j);
        end
    end
else
    C='Tidak dapat dikali max-plus';
end