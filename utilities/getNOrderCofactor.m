function [matDet,eleMat,cofactor,al]=getNOrderCofactor(mat=[],row=[1,2],cols=[1,2])
al=(-1)^(sum(row)+sum(cols))*cofactor;