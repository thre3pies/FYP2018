function everything = dimensions(b,w,data)

b=double(b);
w=double(w);

valuesx = 0:1:b;
valuesy = 0:1:w;

valuesdata = zeros(length(valuesx),(length(valuesy)));
% data=values;
figure(1);
clf('reset');
k = 1;
valuesdata = zeros(max(size(valuesx))*max(size(valuesy)),3);
for i = 1:length(valuesx)
    for j = 1:length(valuesy)
        data(i,j)=rand*10;
%         valuesdata(k)=[valuesx(i)-1,valuesy(j)-1,data(i,j)];
        valuesdata(k,1)=valuesx(i)
        valuesdata(k,2)=valuesy(j)
        valuesdata(k,3)=data(i,j)
        k=k+1
        hold on
        scatter3(valuesx(i),valuesy(j),data(i,j),(data(i,j)*50)+20,[1,1-(data(i,j)/10),0]);
    end
    
end
axis auto
box on
grid on
hold off

everything = valuesdata;
end