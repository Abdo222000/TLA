inputdata = csvread('CPU_data_class.csv');
traindata = inputdata(:,1:6);
traindatagroup = inputdata(:,7);

samplesnum=input('Enter number of test datapoints:');
    for i=1:samplesnum
        x1 = input('Enter the MYCT of the test: \n');
        x2 = input('Enter the MMIN of the test: \n');
        x3 = input('Enter the MMAX value of the test: \n');
        x4 = input('Enter the CACHE of the test: \n');
        x5 = input('Enter the CHMIN of the test: \n');
        x6 = input('Enter the CHMAX of the test: \n');
        sample = [x1 x2 x3 x4 x5 x6];            
      class = knnclassify(sample,traindata,traindatagroup)
    end