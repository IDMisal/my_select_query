# Welcome to My Select Query
***

## Task
This project aimed to create a reusable class in Ruby for working with CSV data. 
The challenge was to develop a solution that could efficiently process CSV data, 
filter rows based on specific criteria, and be easy to integrate into existing Ruby projects.

## Description
The solution involved creating a class named MySelectQuery that accepts CSV data as a string. 
The class parses the data into rows and headers for easier manipulation. The core functionality lies in the where method. 
This method takes a column name and a criteria value as arguments. 
It then iterates through the data rows, excluding the header row, and filters them based on the specified column and criteria. 
Only rows where the value in the target column matches the criteria are returned.

## Installation
This code snippet represents a reusable class and doesn't require separate installation like an external library. 
You can directly incorporate this code into your Ruby project.

## Usage
Here's how to use the MySelectQuery class in Ruby:
*Assuming you've included the code containing the MySelectQuery class in your Ruby project*
csv_data = "...your CSV data here..."  # Replace with your actual CSV data
msq = MySelectQuery.new(csv_data)
result = msq.where("name", "Andre Brown")  # Replace "name" and "Andre Brown" with your desired column and criteria

### The Core Team


<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px' /></span>
