function [a,minmax] = start(b,w)
a = dimensions(b,w)
maximum = max(a)
minimum = min(a)
minmax = [minimum(1,3),maximum(1,3)]
end