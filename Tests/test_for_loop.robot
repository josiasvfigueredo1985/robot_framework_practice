*** Settings ***
Documentation       Simple Google Image search test using loop to search multiple terms

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


*** Test Cases ***
Search images on Google
    FOR    ${term}    IN    @{terms}
        Fill the search input    ${term}
        Submit the search
        Select image search
    END
