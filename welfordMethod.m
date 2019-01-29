function variance = welfordMethod(dataset)
count = numel(dataset,':',':');
sarr = Memoization(dataset);
variance = sarr(count) / (count-1);


function sarr = Memoization(dataset)
marr = double.empty(length(dataset),0);
marr(1) = dataset(1);
sarr = double.empty(length(dataset),0);
sarr(1) = 0;
for k=2:length(dataset)
    x = dataset(k);
    x= double(x);
    marr(k) = (x-marr(k-1))/k + marr(k-1);
    sarr(k) = sarr(k-1)+(x-marr(k))*(x-marr(k-1));
end


% 
% function S_k = Sfunction(k, dataset)
% if k==1
%     S_k = 0;
%     return
% else
%     marr = Mmemoization(k,dataset);
%     temp_k = dataset(k)- Mfunction2(k,dataset,marr);
% %     temp_k_1 = dataset(k)- Mfunction(k-1,dataset);
% %     S_k = ((temp_k*temp_k_1)+ Sfunction(k-1, dataset));
%     return
% end


% function M_k = Mfunction(k,dataset)
% if k == 1
%     M_k = dataset(1);
%     return
% else
%     disp(k-1);
%     M_k_1 = Mfunction(k-1,dataset);
%     M_k = ((dataset(k)-M_k_1)/k) + M_k_1;
%     return
% end


