*** Settings ***
#Library  Collections
Library  String
#Variables  ../config.py

*** Variables ***
${RaterEmail1}  selenium_new1@ccl.example.com
${RaterFname1}  Rater1
${RaterLname1}  New1
${path_excel}   D:\\Assessment-Portal\\WPB5_v4_FormItem.xls

*** Keywords ***

Save Selenium Screenshot
    ${screenshot_index}=    Get Variable Value    ${screenshot_index}    ${0}
    Set Global Variable    ${screenshot_index}    ${screenshot_index.__add__(1)}
    ${time}=    Evaluate    str(time.time())    time
    Set Screenshot Directory   D:\Assesment Portal\Tests\Screenshots
    Capture Page Screenshot    BMKSExec-${time}-${screenshot_index}.png

Start Self Survey

Information Section
    Wait Until Element Is Visible  xpath=//i[@class='fa fa-info-circle survey info-button']  timeout=40
    Execute Javascript  scroll(769, 90)
    Sleep  3 seconds
    Click Element  xpath=//i[@class='fa fa-info-circle survey info-button']
    Sleep  3 seconds
    Save Selenium Screenshot
    Press Key   tag=body  \\27

Test data for Survey1
  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[3]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[3]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[1]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//span[@class='mat-option-text'])[1]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[5]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[5]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[2]  timeout=40
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[2]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[9]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[9]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[3]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[3]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[15]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[15]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[4]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[4]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[17]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[17]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[1]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[1]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[23]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[23]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[2]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[2]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[27]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[27]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[3]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[3]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[29]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[29]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[4]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[4]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[33]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[33]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[1]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[1]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[37]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[37]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[2]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[2]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[41]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[41]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[3]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[3]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[47]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[47]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[4]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[4]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[51]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[51]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[1]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[1]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[53]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[53]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[2]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[2]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[57]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[57]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[3]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[3]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[61]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[61]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[4]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[4]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[65]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[65]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[1]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[1]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[71]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[71]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[2]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[2]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[73]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[73]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[3]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[3]

  Wait Until Element Is Visible  xpath=(//div[@class='mat-select-value'])[79]  timeout=40
  Execute Javascript  scroll(430, 270)
  Click Element  xpath=(//div[@class='mat-select-value'])[79]
  Wait Until Page Contains Element  xpath=(//span[@class='mat-option-text'])[4]  timeout=40
  Execute Javascript  scroll(430, 270)
  Sleep  3 seconds 
  Click Element  xpath=(//span[@class='mat-option-text'])[4]



  








    

  

