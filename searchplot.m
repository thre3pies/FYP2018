function a = searchplot(key,valuesdata)

closest = 0;
answer = 0;
(max(size(valuesdata)))
for i = 1:(max(size(valuesdata)))
    if abs(key-closest)>abs(key-valuesdata(i,3))
        closest = valuesdata(i,3)
        answer = i
    end
end

a = [valuesdata(answer,1),valuesdata(answer,2),valuesdata(answer,3)]
end