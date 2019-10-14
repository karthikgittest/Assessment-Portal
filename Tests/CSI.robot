*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Collections

Resource  ../Keywords/Common_CSI.robot

*** Variables ***
${Forgot_Email}  forgot_password@ccl.example.com
${invalid_email}  invalid_email@testing.com
${invalid_pwd}  test$123433
${null_email}
${null_pwd}
${email}  karthik@banerasoft.biz
${password}  I@s12345
${Delay}  30
${forgot_pwd_response}  IF YOUR EMAIL WAS FOUND, YOU WILL RECEIVE INSTRUCTIONS SHORTLY!
${invalid_data_warning}  WRONG EMAIL OR PASSWORD.
${null_email_warning}  Can't be blank
${null_pwd_warning}  Can't be blank 
${Search_query}  ccl
${Window1Title}  Get Title
${locator}  //input[@type='checkbox']

*** Test cases ***
01_Launch Assessment Portal
  set environment variable  webdriver.chrome.driver  D:\MyStuff\Selenium\chromedriver.exe
  open browser  https://assessments-uat.ccl.org  chrome
  Set Selenium Implicit Wait  ${Delay}
  Maximize Browser Window



06_Login to Assessment Portal
   Wait Until Element Is Visible  xpath=//input[@type='email']  timeout=30  error=User Name Input field not found 
   Input Text  xpath=//input[@type='email']  ${email}
   Input Text  xpath=//input[@type='password']  ${password} 
   Click Element  xpath=//span[contains(text(),'Log In')] 
   Title Should Be  Center for Creative Leadership
   Sleep  3 seconds

07_Self_Survey
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Self')])[3]  timeout=60
  Sleep  3 seconds
  Click Element  xpath=(//span[contains(text(),'Self')])[3]
  Wait Until Element Is Visible  xpath=//button[@class='mat-icon-button']  timeout=40
  Click Element  xpath=//button[@class='mat-icon-button']
  Sleep  3 seconds
  Wait Until Element Is Visible  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]  timeout=40
  Click Element  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]

  
09_Select I Understand Checkbox 
  # Getting checkbox status. If checkbox is selected returns 'true' else 'false'
  # here based on checkbox status "checked" attribute will be updated
  ${checkbox_status}=    Get Element Attribute    ${locator}    checked
  
  # Convert ${checkbox_status} string to Boolean
  ${checkbox_status}=    Convert To Boolean    ${checkbox_status}

  # select checkbox when ${checkbox_status} is false
  Run Keyword If  ${checkbox_status}==False  Click Element  ${locator}  ELSE  Click Element  xpath=//span[contains(text(),'Start Survey')]
  
10_Behavioral_Inventory
  Test data for Survey1  



  

  


  