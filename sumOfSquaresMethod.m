function variance = sumOfSquaresMethod(dataset)
count = numel(dataset,':',':');
sum_sqr = sum(dataset)^2;
sqr_sum =0;
for i = 1:length(dataset)
    x=dataset(i);
    x= double(x);
    x_sqr = x^2;
    sqr_sum= sqr_sum + x_sqr;
end
variance = ((sqr_sum * count) - sum_sqr)/(count*(count - 1));