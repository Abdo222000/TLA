
flag = 0;
while (flag==0)
    disp('Type 1 to Use Iris dataset')
    disp('Type 2 to Use Diabetes dataset')
    disp('Type 3 to Use CPU dataset')
    sel=input('Enter The Selection');
    
if sel == 1
    traindata = csvread('iris_data.csv');
    file = fopen('iris_class.csv');

    for i=1:1:length(importdata('iris_class.csv'))
      b{i} = [textscan(file,'%s','Delimiter',',')];
    end
    traindatagroup=b{1,1}{1,1};
    fclose(file);


    samplesnum=input('Enter number of test datapoints:');
    for i=1:samplesnum
        x1 = input('Enter the sepallength of the test: \n');
        x2 = input('Enter the sepalwidth of the test: \n');
        x3 = input('Enter the petallength value of the test: \n');
        x4 = input('Enter the petalwidth of the test: \n');
        sample = [x1 x2 x3 x4];
      class = knnclassify(sample,traindata,traindatagroup)
    end

elseif sel ==2
    
    traindata = csvread('Diabetesdata.csv');
    file = fopen('Diabetesclass.csv');

    for i=1:1:length(importdata('Diabetesclass.csv'))
      b{i} = [textscan(file,'%s','Delimiter',',')];
    end
    traindatagroup=b{1,1}{1,1};
    fclose(file);


    samplesnum=input('Enter number of test datapoints:');
    for i=1:samplesnum
        x1 = input('Enter the preg of the test: \n');
        x2 = input('Enter the plas of the test: \n');
        x3 = input('Enter the pres value of the test: \n');
        x4 = input('Enter the skin of the test: \n');
        x5 = input('Enter the insu of the test: \n');
        x6 = input('Enter the mass of the test: \n');
        x7 = input('Enter the pedi of the test: \n');
        x8 = input('Enter the age of the test: \n');
        sample = [x1 x2 x3 x4 x5 x6 x7 x8];            
      class = knnclassify(sample,traindata,traindatagroup)
    end
elseif sel==3
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
else
    disp('Not a Valid Selection')
end
end

