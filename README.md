
# 1.	Introduction

The project demonstrate the use of Logistic Regression, Linear Discriminant and Quadratic Discriminant Analysis for classification of Benign and Malignant cases of Breast Cancer.

# 2.	Data Collection

URL : http://archive.ics.uci.edu/ml

Source Information
		a) Creators:
		Dr. William H. Wolberg, General Surgery Dept., University of
		Wisconsin,  Clinical Sciences Center, Madison, WI 53792
		wolberg@eagle.surgery.wisc.edu

		W. Nick Street, Computer Sciences Dept., University of
		Wisconsin, 1210 West Dayton St., Madison, WI 53706
		street@cs.wisc.edu  608-262-6619

		Olvi L. Mangasarian, Computer Sciences Dept., University of
		Wisconsin, 1210 West Dayton St., Madison, WI 53706
		olvi@cs.wisc.edu 

# 3.	Summary

Logistic Regression results:
<table>
    |Prediction|	Test Data
	|Benign	| Malignant
Benign	|73	|0
Malignant|	4|	23


</table> 		Benign  Malignant
        Benign 		74  	0
        Malignant  	3 	23
</table>

Linear Discriminant Analysis results:
<table>
         		Test Data
Prediction  		Benign  Malignant
        Benign 		76  	2
        Malignant  	1 	21
</table>

Quadratic Discriminant Analysis results:
<table>
         		Test Data
Prediction  		Benign  Malignant
        Benign 		73  	0
        Malignant  	4 	23
</table>
It is to be noted that having a <b>False Negative</b> i.e., prediction indicates benign whereas actually the Breast Cancer is malignant can delay a woman’s diagnosis, which requires more aggressive and expansive treatment. In case of Logistic Regression and Quadratic Discriminant analysis, the false negative is given to be 0. While, in case of LDA, the value is statistically not significant i.e., lower than 5%. 
In case of <b>False Positive</b> i.e., prediction indicates Malignant whereas actually the Breast Cancer is Benign can add financial burden because of overdagnosis and include emotional anxieties on patients and their families. All the three methods have an error rate of less than 5%. 

In Conclusion, We can see that using various tools for Breast Cancer analysis can not only be used in identifying and mapping patients at risk but can also be used to reduce the number of False Positive and False Negative results and over diagnosis.
