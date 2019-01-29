
function variance = directMethod(dataset)
x_count = numel(dataset,':',':');
x_sum = 0;
x_mean = mean(dataset,x_count);
for i = 1:length(dataset)
    x=dataset(i);
    x= double(x);
    x_diff = x-x_mean;
%     disp(x_diff);
    x_diff_sqr = x_diff^2;
    x_sum = x_sum + x_diff_sqr;
end
variance = x_sum /(x_count - 1);


function x_mean = mean(dataset,x_count)
x_sum = sum (dataset); %sum
x_mean = x_sum / x_count;