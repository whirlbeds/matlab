close all
clear
clc

load fisheriris
N = length(meas);
[~,idx] = sort(rand(N),1);
idxTrain = idx(1:0.8*N);
idxTest = setdiff(idx,idxTrain);

XTrain = meas(idxTrain,:);
yTrain = species(idxTrain);

XTest = meas(idxTest,:);
yTest = species(idxTest);