*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Collections
Library  pyautogui
Library  Dialogs
Library  ExcelLibrary


Resource  ../Keywords/Common_WPB5v4_Text.robot
#Resource  ../Keywords/Search.robot
#Variables  ../TestData/SearchData.py


*** Variables ***
${Forgot_Email}  forgot_password@ccl.example.com
${invalid_email}  invalid_email@testing.com
${invalid_pwd}  test$123433
${null_email}
${null_pwd}
${email}  karthik@banerasoft.biz
${password}  I@s12345
${Delay}  30
${forgot_pwd_response}  WE'VE JUST SENT YOU AN EMAIL TO RESET YOUR PASSWORD.
${invalid_data_warning}  WRONG EMAIL OR PASSWORD.
${null_email_warning}  Can't be blank
${null_pwd_warning}  Can't be blank 
${Window1Title}  Get Title
${path_excel}   D:\\Assesment Portal\\WPB5_v4_FormItem.xls

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

07_Start Self Survey
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Self')])[3]  timeout=30
  Click Element  xpath=(//span[contains(text(),'Self')])[3]
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
  Wait Until Element Is Visible  xpath=//*[@class='mat-raised-button mat-primary']//span[contains(text(),'No')]  timeout=40
  Click Element  xpath=//*[@class='mat-raised-button mat-primary']//span[contains(text(),'No')]
  #Start Survey(Button)
  Wait Until Element Is Visible  xpath=//button[@class='mat-raised-button mat-primary']  timeout=40
  Sleep  3 seconds
  Save Selenium Screenshot
  Save Selenium Screenshot
  Click Element  xpath=//button[@class='mat-raised-button mat-primary']
  
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Gets tense awaiting outcomes')]  timeout=40
  @{links}=    Get Text From Excel Page1
  :FOR    ${link}    IN    @{links}
        \   Page Should Contain    ${link}

  Test data for Survey1
  Save Selenium Screenshot
  Information Section
  #Next_Group
  Wait Until Element Is Visible  xpath=//button[@class='mat-raised-button mat-primary ng-star-inserted']  timeout=40
  Click Element  xpath=//button[@class='mat-raised-button mat-primary ng-star-inserted']
  
  Sleep  3 seconds
  @{links}=    Get Text From Excel Page2
  :FOR    ${link}    IN    @{links}
        \   Page Should Contain    ${link}

  Test data for Survey2
  Save Selenium Screenshot
  #Next_Group
  Wait Until Element Is Visible  xpath=//button[@class='mat-raised-button mat-primary ng-star-inserted']  timeout=40
  Click Element  xpath=//button[@class='mat-raised-button mat-primary ng-star-inserted']
  
  Sleep  3 seconds
  @{links}=    Get Text From Excel Page3
  :FOR    ${link}    IN    @{links}
        \   Page Should Contain    ${link}

  Test data for Survey3
  Save Selenium Screenshot
  #Next_Group
  Wait Until Element Is Visible  xpath=//button[@class='mat-raised-button mat-primary ng-star-inserted']  timeout=40
  Click Element  xpath=//button[@class='mat-raised-button mat-primary ng-star-inserted']
  
  Sleep  3 seconds
  @{links}=    Get Text From Excel Page4
  :FOR    ${link}    IN    @{links}
        \   Page Should Contain    ${link}

  Test data for Survey4
  Save Selenium Screenshot
  #Next
  Wait Until Element Is Visible  xpath=//button[@class='mat-raised-button mat-primary']  timeout=40
  Click Element  xpath=//button[@class='mat-raised-button mat-primary']

  #Demographics
  Sleep  3 seconds
  Save Selenium Screenshot
  Information Section
  #Wait Until Element Is Visible  xpath=(//*[@class='mat-radio-outer-circle'])[1]  timeout=40
  #Execute Javascript  scroll(280, 0)
  #Click Element  xpath=(//*[@class='mat-radio-outer-circle'])[1]
  #Execute Javascript  scroll(280, 0)
  #Select Radio Button  mat-radio-group-1  xpath=//input[@type='radio']
  #Sleep  3 seconds
  #Wait Until Element Is Visible  xpath=(//*[@class='mat-radio-outer-circle'])[9]  timeout=40
  #Click Element  xpath=(//*[@class='mat-radio-outer-circle'])[9]
  #Select Radio Button  mat-radio-group-1  xpath=//input[@type='radio']
  #Sleep  3 seconds
  #Wait Until Element Is Visible  xpath=(//*[@class='mat-radio-outer-circle'])[26]  timeout=40
  #Execute Javascript  scroll(280, 0)
  #Click Element  xpath=(//*[@class='mat-radio-outer-circle'])[26]
  #Execute Javascript  scroll(280, 0)
  #Select Radio Button  mat-radio-group-1  xpath=//input[@type='radio']

  #Review
  Wait Until Element Is Visible  xpath=//assess-survey-next-step-button  timeout=40
  Save Selenium Screenshot
  Sleep  3 seconds
  Click Element  xpath=//assess-survey-next-step-button
  
  #YourResponses
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Your Responses')]  timeout=40
  Save Selenium Screenshot
  #Information Section
  #ReturnToTheSurvey
  #Sleep   4 seconds
  #Wait Until Element Is Visible  xpath=//span[contains(text(),'90')]  timeout=40
  #Click Element  xpath=//span[contains(text(),'90')]
  #Save Selenium Screenshot

  #SubmitSurvey
  #Wait Until Element Is Visible  xpath=//button[@class='mat-raised-button mat-primary']  timeout=40
  #Click Button  xpath=//button[@class='mat-raised-button mat-primary'] 

#08_Logout from Assessment Portal
  #Wait Until Element Is Visible  xpath=//span[contains(text(),'Log out')]  timeout=30
  #Click Element  xpath=//span[contains(text(),'Log out')] 



  


  