% Importing the csv file
myFilename = 'myFolder/_Koinly_Kickex_Deposits.csv';

% Reading the table from the csv file with
% a specified format for all columns
% The columns reads as : 
% Date:             string represented by %s
% SentAmount:       float represented by %f
% SentCurrency:     string represented by %s
% ReceivedAmount:   float represented by %f
% ReceivedCurrency: string represented by %s
% FeeAmount:        float represented by %f
% FeeCurrency:      float represented by %f
% NetWorthAmount:   float represented by %f
% NetworthCurrency: float represented by %f
% Label:            string represented by %s
% Description:      string represented by %s
% TxHash:           string represented by %s
T = readtable (myFilename, 'Format', '%s%f%s%f%s%f%f%f%f%s%s%s', ...
    VariableNamingRule = 'preserve')

% VariableNamingRule = 'preserve' as a option :
% "preserve" — Preserve variable names that are not valid 
% MATLAB identifiers such as variable names that include 
% spaces and non-ASCII characters.

