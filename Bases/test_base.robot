*** Settings ***
Resource    ../Configs/resources.resource


*** Keywords ***
Open Google
    Open Browser    ${base_url}    browser=${browser}
    Maximize Browser Window

Close Google
    Close Browser

