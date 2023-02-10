*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/resources.robot

*** Keywords ***

Fill login form and submit
    Wait Until Element Is Visible   ${input_username}
    Input Text    ${input_username}   +20220128+11h45m26s@ciandt.com
    Input Text    ${input_password_login}   Test.123
    Wait Until Element Is Enabled   ${button_log_in}
    Click Element   ${button_log_in}
    Wait Until Element Is Enabled   ${profile_element}    timeout=20
    Capture Page Screenshot
