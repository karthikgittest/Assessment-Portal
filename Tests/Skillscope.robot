*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Collections

Resource  ../Keywords/Common_Skillscope.robot

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
${RaterEmail0}  selenium1@ccl.example.com
${RaterFname0}  Rater
${RaterLname0}  One
${RaterEmail1}  selenium_new1@ccl.example.com
${RaterFname1}  Rater1
${RaterLname1}  New1
${WrittenComents1}  Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response1 Response11


*** Test cases ***
01_Launch Assessment Portal
  set environment variable  webdriver.chrome.driver  D:\MyStuff\Selenium\chromedriver.exe
  open browser  https://assessments-uat.ccl.org  chrome
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
   Title Should Be  Center for Creative Leadership
   Sleep  3 seconds

07_Start Self Survey
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Self')])[15]  timeout=60
  Sleep  3 seconds
  Click Element  xpath=(//span[contains(text(),'Self')])[15]
  Wait Until Element Is Visible  xpath=//button[@class='mat-icon-button']  timeout=40
  Click Element  xpath=//button[@class='mat-icon-button']
  Sleep  3 seconds
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]  timeout=40
  Click Element  xpath=//button[@class='mat-menu-item ng-star-inserted'][1]
  Information Section
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Start Survey')]  timeout=40
  Save Selenium Screenshot
  Click Element  xpath=//span[contains(text(),'Start Survey')]

08_Skills_and_Behaviors
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
  Test data for Survey1
  Save Selenium Screenshot
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next')]
    
09_Important_for_success
  Test data for ImpSuccess  
  Save Selenium Screenshot
  Information Section
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next')]
  
10_Written_Comments
  Wait Until Element Is Visible  xpath=(//*[starts-with(@id,'mat-input-')])[1]  timeout=40
  Input Text  xpath=(//*[starts-with(@id,'mat-input-')])[1]  ${WrittenComents1}
  Save Selenium Screenshot
  Information Section
  Sleep  3 seconds
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Next')]  timeout=40
  Click Element  xpath=//span[contains(text(),'Next')]
  
 11_Review
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Review')])[2]  timeout=40
  Save Selenium Screenshot
  Information Section
  Sleep  3 seconds
  Click Element  xpath=(//span[contains(text(),'Review')])[2]
  
12_Your_Responses
  Wait Until Element Is Visible  xpath=//span[contains(text(),'Your Responses')]  timeout=40
  Save Selenium Screenshot
  Information Section

13_Unanswered_Survey
  Wait Until Element Is Visible  xpath=//span[contains(text(),'98')]
  Sleep  2 seconds
  Execute Javascript  scroll(769, 90)
  Click Element  xpath=//span[contains(text(),'98')]
  Sleep  4 seconds
  Save Selenium Screenshot

#13_Submit_Survey
  #Wait Until Element Is Visible  xpath=//span[contains(text(),'SUBMIT SURVEY')]  timeout=40
  #Click Button  xpath=//span[contains(text(),'SUBMIT SURVEY')]

14_Rater_Management_Page
  Click Element  xpath=//button[@class='mat-icon-button']
  Sleep  3 seconds
  Click Element  xpath=//span[@class='menu icon-item']
  Sleep  3 seconds
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Raters')])[7]  timeout=30
  Click Element  xpath=(//span[contains(text(),'Raters')])[7]

15_Add_Rater
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Add')])[1]  timeout=30
  Click Element  xpath=(//span[contains(text(),'Add')])[1]
  Wait Until Element Is Visible  xpath=(//input[@formcontrolname='email'])[1]  timeout=30
  Input Text  xpath=(//input[@formcontrolname='email'])[1]  ${Rateremail0}  
  Input Text  xpath=(//input[@formcontrolname='firstName'])[1]  ${RaterFname0}
  Input Text  xpath=(//input[@formcontrolname='lastName'])[1]  ${RaterLname0}
  Wait Until Element Is Visible  xpath=(//span[contains(text(),'Language')])[1]  timeout=30
  Click Element  xpath=(//span[contains(text(),'Language')])[1]
  Wait Until Element Is Visible  xpath=(.//mat-option[@role='option'])[1]  timeout=30
  Click Element  xpath=(//mat-option[@role='option'])[1]
  Click Element  xpath=//span[contains(text(),'Invite')]
  Sleep  3 seconds
  
16_Validate Duplicate Rater
  Validate Duplicate Rater
  Sleep  3 seconds

17_Expand_Profile
  Wait Until Element Is Visible  xpath=//span[@aria-haspopup="true"]  timeout=30
  Click Element  xpath=//span[@aria-haspopup="true"]
  Wait Until Element Is Visible  xpath=//button[contains(text(),'Contact Us')]  timeout=30
  Choose Ok On Next Confirmation
  Click Element  xpath=//button[contains(text(),'Contact Us')]
  Sleep  2 seconds
  Click Element  xpath=//span[contains(text(),'OK')]

  Click Element  xpath=//span[@aria-haspopup="true"]
  Wait Until Element Is Visible  xpath=//button[contains(text(),'Contact Us')]  timeout=30
  Choose Ok On Next Confirmation
  Click Element  xpath=//button[contains(text(),'FAQ')]
  Sleep  2 seconds
  Click Element  xpath=//span[contains(text(),'OK')]

  Click Element  xpath=//span[@aria-haspopup="true"]
  Wait Until Element Is Visible  xpath=//button[contains(text(),'Privacy Policy')]  timeout=30
  Choose Ok On Next Confirmation
  Click Element  xpath=//button[contains(text(),'Privacy Policy')]
  ${title_var}        Get Window Titles
  Select Window       title=@{title_var}[1]   
  Sleep  3 seconds    
  Close Window
  
#18_Logout_AssessmentPortal
  #Wait Until Element Is Visible  xpath=//span[contains(text(),'Log out')]  timeout=30
  #Click Element  xpath=//span[contains(text(),'Log out')] 

  


  