*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Collections
Library  ExcelLibrary


Resource  ../Keywords/Common_WPB5v4_Text.robot

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
${path_excel}   D:\\Assessment-Portal\\WPB5_v4_FormItem.xls
#${path_excel}   D:\\a\\1\\s\\WPB5_v4_FormItem.xls


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
   Sleep  3 seconds

07_Start Self Survey
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Self')])[5]  timeout=30
  Click Element  xpath=(//span[contains(text(),'Self')])[5]
  Sleep  3 seconds
  Wait Until Element Is Visible  xpath=//button[@class='mat-icon-button']  timeout=40
  Click Element  xpath=//button[@class='mat-icon-button']
  Sleep  3 seconds
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]  timeout=40
  Click Element  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]
  Information Section
  
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Start Survey')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Start Survey')]

  @{links}=    Get Text From Excel Page1
  :FOR    ${link}    IN    @{links}
        \   Page Should Contain    ${link}

  Save Selenium Screenshot
  Information Section
  #Next_Group
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next Group')] timeout=40
  Click Element  xpath=//span[contains(text(),'Next Group')]
  
  Sleep  3 seconds
  @{links}=    Get Text From Excel Page2
  :FOR    ${link}    IN    @{links}
        \   Page Should Contain    ${link}

  Save Selenium Screenshot
  #Next_Group
  Wait Until Element Is Visible  xpath=xpath=//span[contains(text(),'Next Group')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next Group')]
  
  Sleep  3 seconds
  @{links}=    Get Text From Excel Page3
  :FOR    ${link}    IN    @{links}
        \   Page Should Contain    ${link}

  Save Selenium Screenshot
  #Next_Group
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next Group')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next Group')]
  
  Sleep  3 seconds
  @{links}=    Get Text From Excel Page4
  :FOR    ${link}    IN    @{links}
        \   Page Should Contain    ${link}

  Save Selenium Screenshot
  #Next
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next')]

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



  


  