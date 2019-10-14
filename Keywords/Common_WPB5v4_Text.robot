*** Settings ***
#Library  Collections
Library  String
#Variables  ../config.py

*** Variables ***
${RaterEmail1}  selenium_new1@ccl.example.com
${RaterFname1}  Rater1
${RaterLname1}  New1
${path_excel}   D:\\Assessment-Portal\\WPB5_v4_FormItem.xls
#${path_excel}   D:\\a\\1\\s\\WPB5_v4_FormItem.xls

*** Keywords ***

Save Selenium Screenshot
  ${screenshot_index}=    Get Variable Value    ${screenshot_index}    ${0}
  Set Global Variable    ${screenshot_index}    ${screenshot_index.__add__(1)}
  ${time}=    Evaluate    str(time.time())    time
  Set Screenshot Directory   D:\Assesment-Portal\Tests\Screenshots
  Capture Page Screenshot    WPB5-${time}-${screenshot_index}.png

Information Section
    Wait Until Element Is Visible  xpath=//i[@class='fa fa-info-circle survey info-button']  timeout=40
    Click Element  xpath=//i[@class='fa fa-info-circle survey info-button']
    Sleep  3 seconds
    Save Selenium Screenshot
    Press Key   tag=body  \\27
  
Get Text From Excel Page1
    ${my_data_as_list}=    Create List
    Open Excel    ${path_excel}
    :For    ${i}    in range     11       38
    \   ${my_data}    Read Cell Data By Name    Form Items    B${i}
    \   Append To List    ${my_data_as_list}      ${my_data}
    Log    ${my_data_as_list}
    [Return]    ${my_data_as_list}

Get Text From Excel Page2
    ${my_data_as_list}=    Create List
    Open Excel    ${path_excel}
    :For    ${i}    in range     39       68
    \   ${my_data}    Read Cell Data By Name    Form Items    B${i}
    \   Append To List    ${my_data_as_list}      ${my_data}
    Log    ${my_data_as_list}
    [Return]    ${my_data_as_list}

Get Text From Excel Page3
    ${my_data_as_list}=    Create List
    Open Excel    ${path_excel}
    :For    ${i}    in range     69       100
    \   ${my_data}    Read Cell Data By Name    Form Items    B${i}
    \   Append To List    ${my_data_as_list}      ${my_data}
    Log    ${my_data_as_list}
    [Return]    ${my_data_as_list}

Get Text From Excel Page4
    ${my_data_as_list}=    Create List
    Open Excel    ${path_excel}
    :For    ${i}    in range     101       117
    \   ${my_data}    Read Cell Data By Name    Form Items    B${i}
    \   Append To List    ${my_data_as_list}      ${my_data}
    Log    ${my_data_as_list}
    [Return]    ${my_data_as_list}

Test data for Survey1

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[1]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[2]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[2]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[2]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[6]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[6]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[3]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[10]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[10]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[4]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[14]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[14]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[5]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[18]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[18]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[6]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[22]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[22]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[7]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[26]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[26]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[8]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[30]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[30]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[9]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[34]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[34]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[10]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[38]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[38]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[11]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[42]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[42]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[12]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[46]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[46]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[13]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[50]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[50]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[14]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[54]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[54]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[15]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[59]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[59]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[16]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[63]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[63]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[17]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[67]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[67]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[18]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[71]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[71]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[19]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[74]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[74]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[20]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[77]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[77]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[21]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[81]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[81]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[22]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[84]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[84]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[23]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[89]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[89]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[24]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[93]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[93]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[25]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[97]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[97]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[26]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[104]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[104]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[27]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[107]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[107]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[28]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[111]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[111]

Test data for Survey2

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[1]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[2]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[2]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[2]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[6]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[6]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[3]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[10]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[10]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[4]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[14]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[14]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[5]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[18]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[18]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[6]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[22]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[22]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[7]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[26]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[26]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[8]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[30]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[30]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[9]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[34]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[34]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[10]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[38]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[38]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[11]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[42]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[42]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[12]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[46]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[46]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[13]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[50]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[50]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[14]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[54]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[54]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[15]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[59]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[59]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[16]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[63]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[63]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[17]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[67]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[67]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[18]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[71]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[71]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[19]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[74]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[74]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[20]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[77]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[77]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[21]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[81]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[81]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[22]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[84]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[84]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[23]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[89]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[89]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[24]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[93]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[93]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[25]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[97]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[97]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[26]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[104]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[104]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[27]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[107]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[107]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[28]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[111]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[111]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[29]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[111]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[114]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[30]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[111]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[118]

Test data for Survey3

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[1]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[2]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[2]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[2]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[6]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[6]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[3]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[10]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[10]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[4]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[14]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[14]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[5]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[18]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[18]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[6]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[22]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[22]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[7]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[26]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[26]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[8]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[30]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[30]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[9]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[34]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[34]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[10]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[38]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[38]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[11]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[42]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[42]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[12]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[46]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[46]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[13]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[50]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[50]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[14]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[54]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[54]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[15]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[59]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[59]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[16]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[63]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[63]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[17]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[67]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[67]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[18]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[71]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[71]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[19]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[74]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[74]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[20]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[77]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[77]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[21]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[81]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[81]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[22]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[84]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[84]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[23]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[89]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[89]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[24]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[93]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[93]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[25]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[97]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[97]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[26]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[104]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[104]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[27]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[107]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[107]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[28]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[111]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[111]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[29]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[114]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[114]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[30]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[118]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[118]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[31]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[121]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[121]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[32]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[123]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[123]

Test data for Survey4

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[1]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[2]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[2]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[2]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[6]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[6]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[3]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[10]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[10]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[4]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[14]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[14]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[5]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[18]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[18]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[6]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[22]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[22]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[7]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[26]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[26]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[8]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[30]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[30]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[9]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[34]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[34]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[10]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[38]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[38]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[11]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[42]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[42]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[12]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[46]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[46]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[13]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[50]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[50]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[14]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[54]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[54]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[15]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[59]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[59]
    
    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[16]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[63]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[63]

    ${result}=    Run keyword and ignore error   Element should be visible  xpath=(//*[@aria-pressed='true'])[17]
    Run Keyword If  '${result[0]}' == 'PASS'  Click Element  xpath=(//*[@aria-pressed='false'])[67]  ELSE  Click Element    xpath=(//*[@aria-pressed='false'])[67]

    


    

