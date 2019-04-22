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
    Capture Page Screenshot    LO-${time}-${screenshot_index}.png

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

    Wait Until Element Is Visible  xpath=(//div[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin'])[7]  timeout=30
    Click Element  xpath=(//div[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin'])[7]

    Wait Until Element Is Visible  xpath=(//div[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin'])[9]  timeout=30
    Click Element  xpath=(//div[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin'])[9] 

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

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[7]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[7]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[13]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[13]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[17]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[17]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[22]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[22]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[27]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[27]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[32]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[32]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[37]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[37]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[42]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[42]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[48]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[48]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[52]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[52]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[57]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[57]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[62]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[62]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[66]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[66]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[67]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[67]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[74]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[74]


    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[78]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[78]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[82]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[82]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[87]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[87]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[93]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[93]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[98]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[98]

Test data for Survey2
    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[3]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[3]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[7]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[7]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[13]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[13]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[17]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[17]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[22]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[22]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[27]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[27]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[32]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[32]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[37]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[37]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[42]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[42]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[48]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[48]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[52]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[52]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[57]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[57]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[62]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[62]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[66]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[66]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[67]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[67]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[74]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[74]


    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[78]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[78]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[82]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[82]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[87]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[87]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[93]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[93]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[98]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[98]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[103]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[103]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[108]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[108]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[113]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[113]

    #Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[118]  timeout=60
    #Execute Javascript  scroll(280, 0)
    #Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[118]
    

  

