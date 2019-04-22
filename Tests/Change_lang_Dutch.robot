*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Collections
Library  pyautogui
Library  Dialogs

Resource  ../Keywords/Common.robot
#Resource  ../Keywords/Search.robot
#Variables  ../TestData/SearchData.py

*** Variables ***
${email}  dutchpart@testmail.com
${password}  Pass11dev
${Delay}  30
${Window1Title}  Get Title
${WrittenComents}  Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample Text Sample

*** Test cases ***
01_Launch Assessment Portal
  set environment variable  webdriver.chrome.driver  D:\MyStuff\Selenium\chromedriver.exe
  open browser  https://assessments-qa.ccl.org  chrome
  Set Selenium Implicit Wait  ${Delay}
  Maximize Browser Window

06_Login to Assessment Portal
   Wait Until Element Is Visible  xpath=//input[@type='email']  timeout=30  error=User Name Input field not found 
   Input Text  xpath=//input[@type='email']  ${email}
   Input Text  xpath=//input[@type='password']  ${password} 
   Click Element  xpath=//span[contains(text(),'Log In')] 
   Title Should Be  Assessments - CCL
   Sleep  3 seconds

07_Start Self Survey
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Zelf')])[5]   timeout=60
  Sleep  3 seconds
  Click Element  xpath=(//span[contains(text(),'Zelf')])[5]

  Wait Until Element Is Visible  xpath=//button[@class='mat-icon-button']  timeout=40
  Click Element  xpath=//button[@class='mat-icon-button']

  Wait Until Element Is Visible  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]  timeout=40
  Click Element  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]

08_Change_Lang

  Wait Until Element Is Visible  xpath=//div[@class="mat-form-field-infix"]  timeout=30
  Click Element  xpath=//div[@class="mat-form-field-infix"]
  Wait Until Element Is Visible  xpath=//span[contains(text(),'English')]  timeout=40
  Click Element  xpath=//span[contains(text(),'English')]
  Save Selenium Screenshot
  #Wait Until Element Is Visible  xpath=//*[@class='mat-raised-button mat-primary']//span[contains(text(),'No')]  timeout=40
  #Click Element  xpath=//*[@class='mat-raised-button mat-primary']//span[contains(text(),'No')]

  
  

