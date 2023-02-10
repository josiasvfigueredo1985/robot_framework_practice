*** Settings ***
Resource    ../Configs/resources.resource


*** Variables ***
# Elements from Google Search Page
${search_field}     xpath://*[@name = 'q']
${image_search}     //*[@id = "hdtb-msb"]/div[1]/div/div[2]/a
${filled_search}    //*[1][@name = "q"]
