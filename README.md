# Jx-EEGT : Electroencephalogram ( EEG ) Feature Extraction Toolbox

[![View EEG Feature Extraction Toolbox on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/84235-eeg-feature-extraction-toolbox)
[![License](https://img.shields.io/badge/license-BSD_3-yellow.svg)](https://github.com/JingweiToo/EEG-Feature-Extraction-Toolbox/blob/main/LICENSE)
[![GitHub release](https://img.shields.io/badge/release-1.0-green.svg)](https://github.com/JingweiToo/EEG-Feature-Extraction-Toolbox)

---
> "Toward Talent Scientist: Sharing and Learning Together"
>  --- [Jingwei Too](https://jingweitoo.wordpress.com/)
---

![Wheel](https://www.mathworks.com/matlabcentral/mlc-downloads/downloads/0f34f528-fbf4-48ca-84e1-bc1080a430ad/0e019644-3a97-4f4a-b739-0ef1d84f01db/images/1607766116.JPG)


## Introduction

* This toolbox offers 30 types of EEG features 
* The `A_Main` file shows how the feature extraction methods can be applied using generated sample signal. 


## Input
* *`X`*     : signal ( 1 *x* samples )
* *`opts`*  : parameter settings ( some methods have parameters: refer [here](/README.md#list-of-available-feature-extraction-methods) )


## Output
* *`feat`* : feature vector ( you may use other name like *f2* or etc. ) 


## Usage
The main function `jfeeg` is adopted to perform feature extraction. You may switch the method by changing the `'me'` to [other abbreviations](/README.md#list-of-available-feature-extraction-methods)
* If you wish to extract mean energy ( ME ) then you may write
```code
feat = jfeeg('me', X);
```
* If you want to extract hjorth activity ( HA ) then you may write
```code
feat = jfeeg('ha', X);
```


### Example 1 : Extract 3 normal features ( without parameter )
```code 
% Generate a sample random signal X
fs = 500;             % Sampling frequency 
Ts = 1 / fs;          % Period
t  = 0 : Ts : 0.25; 
X  = 0.01 * (sin(2 * pi * fs * t) + randn(1, length(t)));

% Plot sample signal
plot(t,X);  grid on
xlabel('Number of samples');
ylabel('Amplitude');

% Hjorth Activity
f1 = jfeeg('ha', X); 
% Hjorth Mobility
f2 = jfeeg('hm', X); 
% Hjorth Complexity
f3 = jfeeg('hc', X); 

% Feature vector
feat = [f1, f2, f3];

% Display features
disp(feat)
```


### Example 2 : Extract 2 features with parameter    
```code
% Generate a sample random signal X
fs = 500;             % Sampling frequency 
Ts = 1 / fs;          % Period
t  = 0 : Ts : 0.25; 
X  = 0.01 * (sin(2 * pi * fs * t) + randn(1, length(t)));

% Band Power Alpha
opts.fs = 500;
f1 = jfeeg('bpa', X, opts); 
% Tsallis Entropy
opts.alpha = 2;
f2 = jfeeg('te', X, opts);

% Feature vector
feat = [f1, f2];

% Display features
disp(feat)
```


## List of available feature extraction methods
* Some methods comprise parameter to be adjusted. If you do not set the parameter then the feature will be extracted using default setting
* For convenience, you may extract the feature with parameter using default setting as following. In this way, you do not need to set the *`opts`* 
```code
feat = jfeeg('ar', X);
```
* Note : You must set the sampling frequency ( fs ) since there is no default setting for it
* You can use *`opts`* to set the parameter
    + *`alpha`* : constant
    + *`order`* : the number of orders
    + *`fs`*    : sampling frequency 


| No. | Abbreviation | Name                                         |  Parameter ( default )  |
|-----|--------------|----------------------------------------------|-------------------------|
| 30  | `'rba'`      | Ratio of Band Power Alpha to Beta            | opts.fs =               |
| 29  | `'bpg'`      | Band Power Gamma                             | opts.fs =               |
| 28  | `'bpb'`      | Band Power Beta                              | opts.fs =               |
| 27  | `'bpa'`      | Band Power Alpha                             | opts.fs =               |
| 26  | `'bpt'`      | Band Power Theta                             | opts.fs =               |
| 25  | `'bpd'`      | Band Power Delta                             | opts.fs =               |
| 24  | `'ha'`       | Hjorth Activity                              | -                       |
| 23  | `'hm'`       | Hjorth Mobility                              | -                       |
| 22  | `'hc'`       | Hjorth Complexity                            | -                       |
| 21  | `'skew'`     | Skewness                                     | -                       |
| 20  | `'kurt'`     | Kurtosis                                     | -                       |
| 19  | `'1d'`       | First Difference                             | -                       |
| 18  | `'n1d'`      | Normalized First Difference                  | -                       |
| 17  | `'2d'`       | Second Difference                            | -                       |
| 16  | `'n2d'`      | Normalized Second Difference                 | -                       |
| 15  | `'mcl'`      | Mean Curve Length                            | -                       |
| 14  | `'me'`       | Mean Energy                                  | -                       |
| 13  | `'mte'`      | Mean Teager Energy                           | -                       |
| 12  | `'lrssv'`    | Log Root Sum of Sequential Variation         | -                       |
| 11  | `'te'`       | Tsallis Entropy                              | opts.alpha = 2          |
| 10  | `'sh'`       | Shannon Entropy                              | -                       |
| 09  | `'le'`       | LogEnergyEntropy                             | -                       |
| 08  | `'re'`       | RenyiEntropy                                 | opts.alpha = 2          |
| 07  | `'am'`       | Arithmetic Mean                              | -                       |
| 06  | `'sd'`       | Standard Deviation                           | -                       |
| 05  | `'var'`      | Variance                                     | -                       |
| 04  | `'md'`       | Median Value                                 | -                       |
| 03  | `'ar'`       | Auto-Regressive Model                        | opts.order = 4          |
| 02  | `'max'`      | Maximum Value                                | -                       |
| 01  | `'min'`      | Minimum Value                                | -                       |



