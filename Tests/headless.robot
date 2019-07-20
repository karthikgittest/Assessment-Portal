*** Settings ***
Library  Selenium2Library
Library  OperatingSystem
Library  Collections

*** Variables ***
${email}  karthik@banerasoft.biz
${password}  I@s12345
${Delay}  30
${Window1Title}  Get Title

*** Test cases ***
01_Launch Assessment Portal in Headless Chrome
  set environment variable  webdriver.chrome.driver  D:\MyStuff\Selenium\chromedriver.exe
  open browser  https://assessments-uat.ccl.org  chrome
  Set Selenium Implicit Wait  ${Delay}
  Maximize Browser Window
  #${chrome options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, #selenium.webdriver
  #Call Method    ${chrome options}    add_argument    headless
  #Call Method    ${chrome options}    add_argument    disable-gpu
  #Create Webdriver    Chrome    chrome_options=${chrome options}
  #Go To    https://www.assessments-uat.ccl.org

02_Login to Assessment Portal
   Wait Until Element Is Visible  xpath=//input[@type='email']  timeout=30  error=User Name Input field not found 
   Input Text  xpath=//input[@type='email']  ${email}
   Input Text  xpath=//input[@type='password']  ${password} 
   Click Element  xpath=//span[contains(text(),'Log In')] 
   Title Should Be  Center for Creative Leadership
   Sleep  3 seconds

  