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
${FF_PROFILE}   C:\\Users\\Banerasoft\\AppData\\Roaming\\Mozilla\\Firefox\\Profiles\\ctsc5n8d.default

*** Test cases ***
01_Launch Assessment Portal
  set environment variable  webdriver.firefox.driver  D:\MyStuff\Selenium\geckodriver.exe
  open browser  https://assessments-uat.ccl.org  firefox   ff_profile_dir=None
  Set Selenium Implicit Wait  ${Delay}
  Maximize Browser Window
