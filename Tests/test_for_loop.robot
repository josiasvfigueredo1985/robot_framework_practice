*** Settings ***
Documentation       Simple Google Image search test using loop to search multiple terms

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
