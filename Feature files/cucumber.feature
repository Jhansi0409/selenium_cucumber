Feature:
As an admin user add new Employee
@addEmp
Scenario Outline:
Add Employee with multiple data
Given user navigator url as "http://orangehrm.qedgetech.com/" in browser
When user logs as "Admin" in username
And user logs as "Qedge123!@#" in password
And user click login button
Then user login success
When user clicks "PIM"
When user clicks add button 
When user Enter as "<firstName>" in fname
And  user Enter as "<MiddleName>" in Mname
And  user Enter as "<LastName>" in lname
And user capture Eid Before Adding
And user clicks save button
And user capture Eid after adding 
And User validates Eid
Then user close browser
Examples:
|FirstName|MiddleName|LastName|
|Nuthi|Navanith|Chary|
|Chiti|Sangavi|Pavani|
|Gurrapu|Navya|Goud|
|Majoju|Jhansi|Rani|
|Majoju|shravani|chinnu|
 