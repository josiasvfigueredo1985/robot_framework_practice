*** Settings ***
Resource    ../Test_Data/searches.robot
Resource    ../Steps/steps.robot
Resource    ../Bases/test_base.robot
Resource    ../Pages/search_page.robot
Resource    ./config.robot
Library     SeleniumLibrary
Library     Collections
Library     DataDriver    ../Test_Data/test.csv
