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
    Capture Page Screenshot    CE_Rater_Germ-${time}-${screenshot_index}.png

Start Self Survey

Information Section
    Wait Until Element Is Visible  xpath=//i[@class='fa fa-info-circle survey info-button']  timeout=40
    Click Element  xpath=//i[@class='fa fa-info-circle survey info-button']
    Sleep  3 seconds
    Save Selenium Screenshot
    Press Key   tag=body  \\27

Test data for Survey1
    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[3]  timeout=60
    Execute Javascript  scroll(280, 0)
    Press Key  tag=body  \\8
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

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[67]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[67]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[72]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[72]

    Wait Until Element Is Visible  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[78]  timeout=60
    Execute Javascript  scroll(280, 0)
    Click Element  xpath=(//mat-button-toggle[@class='mat-button-toggle ng-star-inserted'])[78]

    
    