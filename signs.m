function s=signs(v);
%SIGNS returns a vector or matrix that is the same size as
%      the input,whose entries are +1,-1, 0 or NaN according
%      to whether the corresponding entries of the input are
%      positive, negative, zero of NaN.

%      Jeff Stuart, USM Math Department, April 1996.
%      jeffrey_stuart@bull.cc.usm.edu

[m,n]=size(v);
indN=isnan(v);
s=sign(v)-indN;
for i=1:m
    for j=1:n
        if indN(i,j)==1, s(i,j)=NaN;
       end
    end
end

