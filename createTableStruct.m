function tableStruct = createTableStruct(columnNames, rowNames, listOfData)
%%Parameters
%columnNames    - Cell array of string names of colums, CAN BE EMPTY
%rowNames       - Cell array of string names of rows, CAN BE EMPTY
%listOfData     - Cell array of the data to be inputted into a table,
%expects every value to either be a number or string
%%Output
%void
%%
tableStruct.columnNames = columnNames;
tableStruct.rowNames = rowNames;
tableStruct.data = listOfData;
end