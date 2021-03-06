*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Collections
Library  pyautogui
Library  Dialogs

Resource  ../Keywords/Common_LM_CH.robot
#Resource  ../Keywords/Search.robot
#Variables  ../TestData/SearchData.py

*** Variables ***
${Forgot_Email}  forgot_password@ccl.example.com
${invalid_email}  invalid_email@testing.com
${invalid_pwd}  test$123433
${null_email}
${null_pwd}
#${email}  karthik@banerasoft.biz
${email}   chinesepart@testmail.com 
#${password}  I@s12345
${password}   Pass11dev
${Delay}  30
${forgot_pwd_response}  WE'VE JUST SENT YOU AN EMAIL TO RESET YOUR PASSWORD.
${invalid_data_warning}  WRONG EMAIL OR PASSWORD.
${null_email_warning}  Can't be blank
${null_pwd_warning}  Can't be blank 
${Search_query}  ccl
${Window1Title}  Get Title
${RaterEmail0}  selenium1@ccl.example.com
${RaterFname0}  Rater
${RaterLname0}  One
${RaterEmail1}  selenium_new1@ccl.example.com
${RaterFname1}  Rater1
${RaterLname1}  New1
${WrittenComents1}  Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1
${WrittenComents2}  Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2

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
   Title Should Be  Assessments - CCL
   Sleep  3 seconds

07_Start Survey and Submit
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'自评')])[11]  timeout=30
  Click Element  xpath=(//span[contains(text(),'自评')])[11]
  Sleep  3 seconds
  Wait Until Element Is Visible  xpath=//button[@class='mat-icon-button']  timeout=40
  Click Element  xpath=//button[@class='mat-icon-button']
  Sleep  3 seconds
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]  timeout=40
  Click Element  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]
  Information Section

  #Change_Lang
  Wait Until Element Is Visible  xpath=//div[@class="mat-form-field-infix"]  timeout=30
  Click Element  xpath=//div[@class="mat-form-field-infix"]
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Deutsch')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Deutsch')]
  Sleep  3 seconds
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//*[@class='mat-raised-button mat-primary']//span[contains(text(),'否')]  timeout=40
  Click Element  xpath=//*[@class='mat-raised-button mat-primary']//span[contains(text(),'否')]
  Wait Until Element Is Visible  xpath=//span[contains(text(),'开始问卷')]  timeout=40
  Sleep  3 seconds
  Save Selenium Screenshot
  Click Element  xpath=//span[contains(text(),'开始问卷')]

  Test data for Survey1
  Save Selenium Screenshot
  Information Section
  Wait Until Element Is Visible  xpath=//span[contains(text(),'下一组')]  timeout=40
  Click Element  xpath=//span[contains(text(),'下一组')]
  
  Sleep  3 seconds
  Test data for Survey1
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//span[contains(text(),'下一组')]  timeout=40
  Click Element  xpath=//span[contains(text(),'下一组')]
  
  Sleep  3 seconds
  Test data for Survey1
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//span[contains(text(),'下一页')]  timeout=40
  Click Element  xpath=//span[contains(text(),'下一页')]

  #ProblemsThatCanStall
  Test data for Problems
  Save Selenium Screenshot
  Information Section
  Wait Until Element Is Visible  xpath=//span[contains(text(),'下一页')]  timeout=40
  Click Element  xpath=//span[contains(text(),'下一页')]

  #ImpforSuccess
  Test data for ImpSuccess  
  Save Selenium Screenshot
  Sleep  2 seconds
  Information Section
  Wait Until Element Is Visible  xpath=//span[contains(text(),'下一页')]  timeout=40
  Click Element  xpath=//span[contains(text(),'下一页')]

  #WrittenComments
  Wait Until Element Is Visible  xpath=(//*[starts-with(@id,'mat-input-')])[1]  timeout=40
  Input Text  xpath=(//*[starts-with(@id,'mat-input-')])[1]  ${WrittenComents1}
  Wait Until Element Is Visible  xpath=(//*[starts-with(@id,'mat-input-')])[2]  timeout=40
  Input Text  xpath=(//*[starts-with(@id,'mat-input-')])[2]  ${WrittenComents2}
  Save Selenium Screenshot  
  Sleep  2 seconds
  Information Section

  #Review
  Wait Until Element Is Visible  xpath=//span[contains(text(),'查看问卷完成情况')]  timeout=40
  Save Selenium Screenshot
  Sleep  3 seconds
  Click Element  xpath=//span[contains(text(),'查看问卷完成情况')]
  
  #YourResponses
  Wait Until Element Is Visible  xpath=//span[contains(text(),'问卷完成情况')]  timeout=40
  Save Selenium Screenshot
  Information Section

  #SubmitSurvey
  #Wait Until Element Is Visible  xpath=//span[contains(text(),'提交问卷')]  timeout=40
  #Click Element  xpath=//span[contains(text(),'提交问卷')]
  #Sleep  5 seconds
  #Save Selenium Screenshot
