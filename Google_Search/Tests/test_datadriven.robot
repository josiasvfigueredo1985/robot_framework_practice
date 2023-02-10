*** Settings ***
Documentation       Simple Google search test

Resource            ../Configs/resources.resource

Test Setup          Open Google
Test Teardown       Close Google
Test Template       Search for a term


*** Test Cases ***
Search on Google
    Search for a term


*** Keywords ***
Search for a term
    [Arguments]    ${term}
    Fill the search input    ${term}
    Submit the search

