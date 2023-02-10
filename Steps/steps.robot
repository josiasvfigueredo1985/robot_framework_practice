*** Settings ***
Resource    ../Configs/resources.resource


*** Keywords ***
Fill the search input
    [Arguments]    ${term}
    Wait Until Element Is Visible    ${search_field}
    Input Text    ${search_field}    ${term}

Submit the search
    ${IsElementVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${search_field}
    IF    ${IsElementVisible}    Press Keys    ${search_field}    RETURN
    # Return Status keyword returns a boolean, allowing the IF to validate the condition
    ${search}=    Get Element Attribute    ${filled_search}    attribute=value
    Capture Page Screenshot    ./Google_Search/${TEST NAME}_${search}.png

Select image search
    ${IsElementVisible}=    Run Keyword And Return Status    Element Should Be Visible    ${image_search}
    IF    ${IsElementVisible}    Click Element    xpath:${image_search}

