# ComputeVariance
https://www.johndcook.com/blog/2008/09/26/comparing-three-methods-of-computing-standard-deviation/

# Motivation 
https://www.johndcook.com/blog/2008/09/26/comparing-three-methods-of-computing-standard-deviation/ 

The goal in this project is to reproduce the experiment that John D. Cook describes in his post (the link above). 
The data is provided in a MATLAB file "problem_set_01.mat". 

# Result Table
4×5 table

          methodName           dataset1Out    dataset2Out    dataset3Out    dataset4Out
    _______________________    ___________    ___________    ___________    ___________

    'direct method'            17.346          57.876        133.03         381.26     
    'sun of squares'           15.823         -7318.4        135.48          11400     
    'welford Method'           17.346          57.876        133.03         381.26     
    'use built-in func:var'    17.346          57.876        133.03         381.26     
    
# Observations
From table above, we can conclude that direct method and Welford method are more accurate than sum of square, and direct method is slightly more accurate than Welford method for these 4 datasets. 

We can group these datasets to two groups, the first group is dataset1 and dataset3, since the value of number in these two datasets are around 〖10〗^7.  The other group is dataset2 and dataset4, and the value of number in dataset2 and dataset4 are around 〖10〗^9. 
¬
For the first group, compare with built-in function var(dataset), we see that direct method was correct to at least 11 significant figures, and Welford method was correct to at least 10 significant figures. The sum of square method was only correct to 1-2 significant figures. Therefore, in this group, direct method and Welford method were better than the sum of square method. Moreover, direct method is more accurate for large variance, since it was correct to at least 14 significant figures for dataset3. Welford method performed same for both small and large variance.

For the second group, direct method was correct to 14 significant figures for both small and large variance. Welford method was correct to 7 significant figures for small variance (dataset2), and it was correct to 9 significant figures for large variance (dataset4). The sum of square produced impossible results for these two datasets.

Therefore, in general, when the value of numbers in datasets are around 〖10〗^7 and 〖10〗^9, the sum of square method is bad for these datasets, but both direct method and Welford method are quite good. Moreover, for these datasets, direct method is better than Welford method.
¬

