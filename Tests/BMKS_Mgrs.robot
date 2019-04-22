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
${Forgot_Email}  forgot_password@ccl.example.com
${invalid_email}  invalid_email@testing.com
${invalid_pwd}  test$123433
${null_email}
${null_pwd}
${email}  lmi2@testmail.com
#${email}  apmaintvalidation@imail.ccl.org
${password}  Pass11dev
#${password}   Asp@12345
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
${WrittenComents1}  Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response11
${WrittenComents2}  Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response2 Response22 

*** Test cases ***
01_Launch Assessment Portal
  set environment variable  webdriver.chrome.driver  D:\MyStuff\Selenium\chromedriver.exe
  open browser  https://assessments-qa.ccl.org  chrome
  Set Selenium Implicit Wait  ${Delay}
  Maximize Browser Window

02_Forgot Password
  Wait Until Element Is Visible  xpath=//a[@class='auth0-lock-alternative-link']  timeout=30
  #Click Element  xpath=//a[@class='auth0-lock-alternative-link' and contains(text(),'Don't remember your password?')]
  Sleep  3 seconds
  Click Element  xpath=//a[@class='auth0-lock-alternative-link']

03_Enter Email id to reset password and validate success message
  Wait Until Element Is Visible  xpath=//input[@class='auth0-lock-input']  timeout=30
  Input Text  xpath=//input[@class='auth0-lock-input']  ${Forgot_Email}
  Click Element  xpath=//span[contains(text(),'Send email')]
  #Validate Success Message of Reset Email
  Sleep  3 seconds
  Wait Until Element Is Visible  xpath=//span[@class='animated fadeInUp']  timeout=30
  Element Text Should Be  xpath=//span[@class='animated fadeInUp']  ${forgot_pwd_response}  message=None
  Go Back
  Sleep  3 seconds

04_Login to Assessment Portal with Invalid Data
  Wait Until Element Is Visible  xpath=//input[@type='email']  timeout=30  error=User Name Input field not found 
  Input Text  xpath=//input[@type='email']  ${invalid_email}
  Input Text  xpath=//input[@type='password']  ${invalid_pwd} 
  Click Element  xpath=//span[contains(text(),'Log In')] 
  #Validate Warning Message
  Sleep  2 seconds
  Wait Until Element Is Visible  xpath=//span[@class='animated fadeInUp']  timeout=30
  Element Text Should Be  xpath=//span[@class='animated fadeInUp']  ${invalid_data_warning}  message=None
  Sleep  3 seconds
  Go Back

05_Login to Assessment Portal with null data
  Wait Until Element Is Visible  xpath=//input[@type='email']  timeout=30  error=User Name Input field not found 
  Input Text  xpath=//input[@type='email']  ${null_email}
  Input Text  xpath=//input[@type='password']  ${null_pwd} 
  Click Element  xpath=//span[contains(text(),'Log In')] 
  #Validate Email Warning Message
  Wait Until Element Is Visible  xpath=//div[@class='auth0-lock-input-block auth0-lock-input-email auth0-lock-error']  timeout=30
  Element Text Should Be  xpath=//div[@class='auth0-lock-input-block auth0-lock-input-email auth0-lock-error']  ${null_email_warning}  message=None
  #Validate pwd Warning Message
  Wait Until Element Is Visible  xpath=//div[@class='auth0-lock-input-block auth0-lock-input-password auth0-lock-error']  timeout=30
  Element Text Should Be  xpath=//div[@class='auth0-lock-input-block auth0-lock-input-password auth0-lock-error']  ${null_pwd_warning}  message=None
  Sleep  3 seconds
  Go Back

06_Login to Assessment Portal
   Wait Until Element Is Visible  xpath=//input[@type='email']  timeout=30  error=User Name Input field not found 
   Input Text  xpath=//input[@type='email']  ${email}
   Input Text  xpath=//input[@type='password']  ${password} 
   Click Element  xpath=//span[contains(text(),'Log In')] 
   Title Should Be  Assessments - CCL
   Sleep  3 seconds

07_Start Survey and Submit
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Self')])[1]  timeout=30
  Click Element  xpath=(//span[contains(text(),'Self')])[1]
  #Wait Until Element Is Visible  xpath=(//span[contains(text(),'Self')])[5]  timeout=60
  Sleep  3 seconds
  #Click Element  xpath=(//span[contains(text(),'Self')])[5]

  #${IsElementVisible}=  Run Keyword And Return Status  Element Should Be Visible   ${//span[contains(text(),'Start Survey')]}
  #Run Keyword If  ${IsElementVisible}  ELSE  Wait Until Element Is Visible  xpath=//button[@class='mat-icon-button']  #timeout=40
  Wait Until Element Is Visible  xpath=//button[@class='mat-icon-button']  timeout=40
  Click Element  xpath=//button[@class='mat-icon-button']
  Sleep  3 seconds
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]  timeout=40
  Click Element  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]
 
  #Star Survey(button)
  Wait Until Element Is Visible  xpath=//button[@class='mat-raised-button mat-primary']  timeout=40
  Save Selenium Screenshot
  Click Element  xpath=//button[@class='mat-raised-button mat-primary']

  Test data for Survey1
  Save Selenium Screenshot
  Information Section
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next Group')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next Group')]
  
  Sleep  3 seconds
  Test data for Survey1
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next Group')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next Group')]
  
  Sleep  3 seconds
  Test data for Survey1
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next Group')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next Group')]
  
  Sleep  3 seconds
  Test data for Survey1
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next Group')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next Group')]
  
  Sleep  3 seconds
  Test data for Survey2
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next')]
  
  #Derailers
  Sleep  3 seconds
  Test data for Survey1
  Save Selenium Screenshot
  Information Section
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next Group')]

  Sleep  3 seconds
  Test data for Derailer2
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next')]
  
  #ImpforSuccess
  #Test data for ImpSuccess  
  Save Selenium Screenshot
  Information Section
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next')]
  
  #WrittenComments
  Wait Until Element Is Visible  xpath=(//*[starts-with(@id,'mat-input-')])[1]  timeout=40
  Sleep  3 seconds
  Input Text  xpath=(//*[starts-with(@id,'mat-input-')])[1]  ${WrittenComents1}
  Wait Until Element Is Visible  xpath=(//*[starts-with(@id,'mat-input-')])[2]  timeout=40
  Sleep  3 seconds
  Input Text  xpath=(//*[starts-with(@id,'mat-input-')])[2]  ${WrittenComents2}
  Save Selenium Screenshot
  Information Section
  Sleep  3 seconds
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next')]
  
  #Demographics
  #Sleep  3 seconds
  #Wait Until Element Is Visible  xpath=(//*[@class='mat-radio-outer-circle'])[1]  timeout=40
  #Click Element  xpath=(//*[@class='mat-radio-outer-circle'])[1]
  #Sleep  3 seconds
  #Wait Until Element Is Visible  xpath=(//*[@class='mat-radio-outer-circle'])[9]  timeout=40
  #Click Element  xpath=(//*[@class='mat-radio-outer-circle'])[9]
  #Select Radio Button  mat-radio-group-1  xpath=//input[@type='radio']
  Information Section
  #Review
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Review')]  timeout=40
  Save Selenium Screenshot
  Sleep  3 seconds
  Click Element  xpath=//span[contains(text(),'Review')]
  
  #YourResponses
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Your Responses')]  timeout=40
  Save Selenium Screenshot
  #Information Section

  #ReturnToTheSurvey
  Wait Until Element Is Visible  xpath=//span[@class='text-warn text-link ng-star-inserted']  timeout=40
  Execute Javascript  scroll(280, 0)
  Sleep  5 seconds
  Click Element  xpath=//span[@class='text-warn text-link ng-star-inserted']
  Sleep   5 seconds
  Save Selenium Screenshot

  #SubmitSurvey
  #Wait Until Element Is Visible  xpath=//span[contains(text(),'SUBMIT SURVEY')]  timeout=40
  #Click Element  xpath=//span[contains(text(),'SUBMIT SURVEY')]
  #Save Selenium Screenshot

08_Rater_Management_Page
  Wait Until Element Is Visible   xpath=//i[@class='fa fa-bars fa-2x']   timeout=30
  Click Element  xpath=//i[@class='fa fa-bars fa-2x']
  Sleep   4 seconds
  Wait Until Element Is Visible   xpath=(//span[contains(text(),'Home')])[1]   timeout=30
  Click Element  xpath=(//span[contains(text(),'Home')])[1]
  Sleep  4 seconds
  Wait Until Element Is Visible   xpath=(//span[contains(text(),'Raters')])[1]   timeout=30
  Sleep  4 seconds
  Click Element  xpath=(//span[contains(text(),'Raters')])[1]

09_Add_Rater
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Add')])[1]  timeout=30
  Click Element  xpath=(//span[contains(text(),'Add')])[1]
  Sleep  3 seconds
  Wait Until Element Is Visible  xpath=(//input[@formcontrolname='email'])[1]  timeout=30
  Input Text  xpath=(//input[@formcontrolname='email'])[1]  ${Rateremail0}  
  Sleep  3 seconds
  Input Text  xpath=(//input[@formcontrolname='firstName'])[1]  ${RaterFname0}
  Sleep  3 seconds
  Input Text  xpath=(//input[@formcontrolname='lastName'])[1]  ${RaterLname0}
  Sleep  3 seconds
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Language')])[1]  timeout=30
  Click Element  xpath=(//span[contains(text(),'Language')])[1]
  Sleep  3 seconds
  Wait Until Element Is Visible  xpath=(.//mat-option[@role='option'])[1]  timeout=30
  Click Element  xpath=(//mat-option[@role='option'])[1]
  Sleep  3 seconds
  Click Element  xpath=//span[contains(text(),'Invite')]
  Sleep  2 seconds
  
10_Validate Duplicate Rater
  Validate Duplicate Rater
  Sleep  2 seconds

11_Expand Profile
  Wait Until Element Is Visible  xpath=//span[@aria-haspopup="true"]  timeout=30
  Sleep  4 seconds
  Click Element  xpath=//span[@aria-haspopup="true"]
  Wait Until Element Is Visible  xpath=//button[contains(text(),'Contact Us')]  timeout=30
  Choose Ok On Next Confirmation
  Click Element  xpath=//button[contains(text(),'Contact Us')]
  Sleep  4 seconds
  Click Element  xpath=//span[contains(text(),'OK')]

  Click Element  xpath=//span[@aria-haspopup="true"]
  Sleep  4 seconds
  Wait Until Element Is Visible  xpath=//button[contains(text(),'Contact Us')]  timeout=30
  Choose Ok On Next Confirmation
  Click Element  xpath=//button[contains(text(),'FAQ')]
  Sleep  2 seconds
  Click Element  xpath=//span[contains(text(),'OK')]

  Click Element  xpath=//span[@aria-haspopup="true"]
  Sleep  4 seconds
  Wait Until Element Is Visible  xpath=//button[contains(text(),'Privacy Policy')]  timeout=30
  Choose Ok On Next Confirmation
  Click Element  xpath=//button[contains(text(),'Privacy Policy')]
  ${title_var}        Get Window Titles
  Select Window       title=@{title_var}[1]   
  Sleep  3 seconds    
  Close Window

  