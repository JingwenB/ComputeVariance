

function T = outputTable(dataset1,dataset2,dataset3,dataset4)
methodName = {'direct method';'sun of squares';'welfordMethod'};
dataset1Out= [directMethod(dataset1);sumOfSquaresMethod(dataset1);welfordMethod(dataset1)];
dataset2Out= [directMethod(dataset2);sumOfSquaresMethod(dataset2);welfordMethod(dataset2)];
dataset3Out= [directMethod(dataset3);sumOfSquaresMethod(dataset3);welfordMethod(dataset3)];
dataset4Out= [directMethod(dataset4);sumOfSquaresMethod(dataset4);welfordMethod(dataset4)];
T = table(methodName,dataset1Out,dataset2Out,dataset3Out,dataset4Out);





