tic;
b=[10,12,43;2,12,23;3,14,15];
a=zeros(10);
z=[0,0,0,0,0,0,0,0,0];
sum=0;
i=1;
r=1;
for x=1:3
    for y=1:3
       if 1<sqrt((2-x)*(2-x)+(2-y)*(2-y))&& sqrt((2-x)*(2-x)+(2-y)*(2-y))<2
        disp(b(x,y));
        a(i)=b(x,y);
        i=i+1;
        disp(a(i));
       end
    end
    sum=sum+b(x,y);
    %disp(sum);
end   
for j=1:i
     if  5 < abs(12-a(i))&&abs(12-a(i))<14
       z(r)=a(i);
        r=r+1;
        %disp(z(r));
     end
end  

toc;
 


