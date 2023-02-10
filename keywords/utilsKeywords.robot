*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/resources.robot


*** Variables ***
@{_tmp}
...                 browserName: chrome,
...                 platform: windows 10,
...                 version: 101,
...                 name: Robot Test
# ...    build: Python-Robot-Selenium-VDC

${capabilities}     ${EMPTY.join(${_tmp})}


*** Keywords ***
Open the browser and access the site
    [Arguments]    ${browser}    ${url}
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    no-sandbox
    ${options}    Call Method    ${chrome_options}    to_capabilities
    Open Browser    https://${basic_auth_username}:${basic_auth_password}@${url}    browser=${browser}
    # ...    remote_url=${sauce_remote_url}
    # ...    desired_capabilities=${capabilities}
    Maximize Browser Window
    #Set Window Size    1920    1080

Confirm US Residence
    Wait Until Element Is Visible    ${button_us_residence}
    Click Element    ${button_us_residence}

Click 'Join/Log in' button
    Wait Until Element Is Visible    ${join_log_in_link}
    Click Element    ${join_log_in_link}

Close the browser
    Close Browser
