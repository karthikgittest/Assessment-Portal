*** Settings ***
#Library  Collections
Library  String
#Variables  ../config.py

*** Variables ***
${RaterEmail1}  selenium_new1@ccl.example.com
${RaterFname1}  Rater1
${RaterLname1}  New1

*** Keywords ***

Save Selenium Screenshot
    ${screenshot_index}=    Get Variable Value    ${screenshot_index}    ${0}
    Set Global Variable    ${screenshot_index}    ${screenshot_index.__add__(1)}
    ${time}=    Evaluate    str(time.time())    time
    Set Screenshot Directory   D:\Assesment Portal\Tests\Screenshots
    Capture Page Screenshot    MLP-${time}-${screenshot_index}.png

Start Self Survey

Information Section
    Wait Until Element Is Visible  xpath=//i[@class='fa fa-info-circle survey info-button']  timeout=40
    Click Element  xpath=//i[@class='fa fa-info-circle survey info-button']
    Sleep  3 seconds
    Save Selenium Screenshot
    Press Key   tag=body  \\27

Test data for ImpSuccess    
    Wait Until Element Is Visible  xpath=(//div[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin'])[1]  timeout=30
    Click Element  xpath=(//div[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin'])[1]

    Wait Until Element Is Visible  xpath=(//div[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin'])[4]   timeout=30
    Click Element  xpath=(//div[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin'])[4] 

    Wait Until Element Is Visible  xpath=(//div[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin'])[5]  timeout=30
    Click Element  xpath=(//div[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin'])[5]  

Validate Duplicate Rater
    ${IsElementVisible}=  Run Keyword And Return Status  Element Should Be Visible  xpath=//div[contains(text(),'You have already added rater:')]
    Run Keyword If  ${IsElementVisible}  Click Element  xpath=(//i[@class='fa fa-remove'])[1]
    Click Element  xpath=(//span[contains(text(),'Add')])[1]
    Wait Until Element Is Visible  xpath=(//input[@formcontrolname='email'])[1]  timeout=30
    Input Text  xpath=(//input[@formcontrolname='email'])[1]  ${Rateremail1}  
    Input Text  xpath=(//input[@formcontrolname='firstName'])[1]  ${RaterFname1}
    Input Text  xpath=(//input[@formcontrolname='lastName'])[1]  ${RaterLname1}
    Wait Until Element Is Visible  xpath=(//span[contains(text(),'Language')])[1]  timeout=30
    Click Element  xpath=(//span[contains(text(),'Language')])[1]
    Wait Until Element Is Visible  xpath=(.//mat-option[@role='option'])[1]  timeout=30
    Click Element  xpath=(//mat-option[@role='option'])[1]
    Click Element  xpath=//span[contains(text(),'Invite')]

Test data for Survey1
    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[3]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[3]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[6]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[6]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[10]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[10]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[15]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[15]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[19]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[19]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[24]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[24]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[29]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[29]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[35]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[35]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[39]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[39]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[42]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[42]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[48]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[48]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[49]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[49]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[53]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[53]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[59]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[59]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[63]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[63]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[66]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[66]

    #Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[71]  timeout=60
    #Execute Javascript  scroll(280, 0)
    #Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[71]

Test data for Problems
    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[3]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[3]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[6]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[6]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[10]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[10]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[15]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[15]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[19]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[19]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[24]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[24]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[29]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[29]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[31]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[31]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[39]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[39]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[42]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[42]

    



    

  

