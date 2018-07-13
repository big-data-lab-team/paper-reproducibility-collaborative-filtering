# Utility-Matrix
Utility-Matrix files are used to make the utility matrix with use of plot_matrix.py tool.
The data in this files consists of several fields as follow.
`<row-index;subject-index;value;file-id>`


	-row-index: refers to the actual name of the file. row-index file in the same directory could be used to find the actual file name.
	-subject-index: refers to the actual name of the file. column-index file in the same directory could be used to find the actual file name.
	-value: It is a binary value which represents the observation of any differences (1= difference, 0= no difference) 
	-file-id: represent the generation order of the file in the pipeline

# Accuracy Values
Average files contain the mean value of 8 parameters as follow by running predict.py script for 5 times.
`<target_ratio;accuracy;constant_accuracy;sensitivity;specificity;dummy;RMSE>`

	-target_ratio: training ratio
	-accuracy: calculated accuracy by the rate of the number of correct predicted values over the total number of the predicted values
	-constant_accuracy: calculated accuracy by the rate of the number of correct predicted values over the number of the predicted values which their files did not have constant value over the all subjects.
	-sensitivity: the true positive rate
	-specificity: the true negative rate
	-dummy: dominant value of the utility matrix
	-RMSE: Root-Mean-Square-Error
	  
