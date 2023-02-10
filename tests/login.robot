*** Settings ***
Documentation       Tests for VPRO site

Resource            ../resources/resources.robot

Test Setup          Open the browser and access the site
Test Teardown       Close the browser


*** Test Cases ***
Scenario 1: Do login in VPRO
    Confirm US Residence
    Click 'Join/Log in' button
    Fill login form and submit

