*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Collections
Library  pyautogui
Library  Dialogs
Library  ExcelLibrary

Resource  ../Keywords/Common_WPB5v4_Text.robot
#Variables  ../TestData/SearchData.py

*** Variables ***
${email}  karthik@banerasoft.biz
${password}  I@s12345
${Delay}  30
${Window1Title}  Get Title
${path_excel}   D:\\Assesment Portal\\WPB5_v4_FormItem.xls

*** Test cases ***
01_Launch Assessment Portal
  set environment variable  webdriver.chrome.driver  D:\MyStuff\Selenium\chromedriver.exe
  open browser  https://assessments-uat.ccl.org  chrome
  Set Selenium Implicit Wait  ${Delay}
  Maximize Browser Window

02_Login to Assessment Portal
   Wait Until Element Is Visible  xpath=//input[@type='email']  timeout=30  error=User Name Input field not found 
   Input Text  xpath=//input[@type='email']  ${email}
   Input Text  xpath=//input[@type='password']  ${password} 
   Click Element  xpath=//span[contains(text(),'Log In')] 
   Title Should Be  Assessments - CCL
   Sleep  3 seconds

03_Compare_form_items
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Self')])[3]  timeout=30
  Click Element  xpath=(//span[contains(text(),'Self')])[3]

  Wait Until Element Is Visible  xpath=//button[@class='mat-icon-button']  timeout=40
  Click Element  xpath=//button[@class='mat-icon-button']
  Sleep  3 seconds
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]  timeout=40
  Click Element  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]

  Wait Until Element Is Visible  xpath=//span[contains(text(),'Start Survey')]  timeout=40
  Save Selenium Screenshot
  Click Element  xpath=//span[contains(text(),'Start Survey')]
  
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Gets tense awaiting outcomes')]  timeout=40
  @{links}=    Get Text From Excel Page1
  :FOR    ${link}    IN    @{links}
        \   Page Should Contain    ${link}

  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next Group')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next Group')]
  
  Sleep  3 seconds
  @{links}=    Get Text From Excel Page2
  :FOR    ${link}    IN    @{links}
        \   Page Should Contain    ${link}
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next Group')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next Group')]
  
  Sleep  3 seconds
  @{links}=    Get Text From Excel Page3
  :FOR    ${link}    IN    @{links}
        \   Page Should Contain    ${link}
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next Group')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next Group')]
  
  Sleep  3 seconds
  @{links}=    Get Text From Excel Page4
  :FOR    ${link}    IN    @{links}
        \   Page Should Contain    ${link}
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next')]
  
  #Review
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Review')])  timeout=40
  Save Selenium Screenshot
  Sleep  3 seconds
  Click Element  xpath=(//span[contains(text(),'Review')])
  
  
  


  


  