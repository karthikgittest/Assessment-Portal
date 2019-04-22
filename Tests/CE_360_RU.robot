*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Collections
Library  pyautogui
Library  Dialogs

Resource  ../Keywords/Common_CE.robot

*** Variables ***
${email}  rceboss@testmail.com
${password}   Pass11dev
${Delay}  30
${Window1Title}  Get Title
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
  #Wait Until Element Is Visible  xpath=(//span[contains(text(),'Самооценка')])[1]  timeout=30
  #Click Element  xpath=(//span[contains(text(),'Самооценка')])[1]
  #Rater
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Опросник')])[2]  timeout=30
  Click Element  xpath=(//span[contains(text(),'Опросник')])[2]
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
  Wait Until Element Is Visible  xpath=//*[@class='mat-raised-button mat-primary']//span[contains(text(),'Нет')]  timeout=40
  Click Element  xpath=//*[@class='mat-raised-button mat-primary']//span[contains(text(),'Нет')]
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Начать заполнение')]  timeout=40
  Sleep  3 seconds
  Save Selenium Screenshot
  Click Element  xpath=//span[contains(text(),'Начать заполнение')]

  Test data for Survey1
  Save Selenium Screenshot
  Information Section
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Следующая группа')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Следующая группа')]
  
  Sleep  3 seconds
  Test data for Survey1
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Следующая группа')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Следующая группа')]
  
  Sleep  3 seconds
  Test data for Survey1
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Далее')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Далее')]

  #WrittenComments
  Wait Until Element Is Visible  xpath=(//*[starts-with(@id,'mat-input-')])[1]  timeout=40
  Input Text  xpath=(//*[starts-with(@id,'mat-input-')])[1]  ${WrittenComents1}
  Wait Until Element Is Visible  xpath=(//*[starts-with(@id,'mat-input-')])[2]  timeout=40
  Input Text  xpath=(//*[starts-with(@id,'mat-input-')])[2]  ${WrittenComents2}
  Save Selenium Screenshot  
  Sleep  2 seconds
  Information Section
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Далее')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Далее')]

  #Research Questions
  Save Selenium Screenshot
  Information Section
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Следующая группа')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Следующая группа')]
  Sleep  3 seconds
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Следующая группа')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Следующая группа')]
  Sleep  3 seconds
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Далее')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Далее')]

  #Experience at Work1
  Save Selenium Screenshot
  Information Section
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Следующая группа')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Следующая группа')]
  #Experience at Work2
  Save Selenium Screenshot
  #Review
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Обзор')]  timeout=40
  Save Selenium Screenshot
  Sleep  3 seconds
  Information Section
  Click Element  xpath=//span[contains(text(),'Обзор')]
  
  #YourResponses
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Ваши ответы')]  timeout=40
  Sleep  3 seconds
  Save Selenium Screenshot
  Information Section

  #SubmitSurvey
  #Wait Until Element Is Visible  xpath=//span[contains(text(),'SUBMIT SURVEY')]  timeout=40
  #Click Element  xpath=//span[contains(text(),'SUBMIT SURVEY')]
  #Sleep  5 seconds
  #Save Selenium Screenshot
