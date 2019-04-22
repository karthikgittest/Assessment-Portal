*** Settings ***
Library  pyautogui
Library  OperatingSystem

*** Variables ***
${x}              ${160}
${y}              ${320}

*** Test Cases ***

mouse move to
  moveTo    ${x}    ${y}