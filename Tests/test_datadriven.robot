*** Settings ***
Documentation       Simple Google search test

Resource            ../Test_Data/searches.robot
Resource            ../Steps/steps.robot
Resource            ../Bases/test_base.robot
Resource            ../Pages/search_page.robot
Resource            ../Configs/config.robot
Library             SeleniumLibrary
Library             Collections
Library             DataDriver    ../Test_Data/test.csv
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

