# *** Settings ***
# Documentation    Tests for register in VPRO site

# Resource    ../resources/resources.robot

# Test Teardown    Close the browser
# #Test Setup    Run Keywords    Open the browser and access the site    ${browser}
# #...    AND    Confirm US Residence
# #...    AND    Click 'Join/Log in' button
# #...    AND    Click on the Yes, create a profile button
# Test Template    Scenario 1: Do Registration in VPRO as Contact lens with role Optician

# *** Test Cases ***    URL
# US    dev.jnjvisionpro.com/
# CA-EN    dev.jnjvisionpro.ca/
# CA-FR    dev.fr.jnjvisionpro.ca/
# GM    dev.globalmaster.jnjvisionpro.com/
# BRASIL    dev.jnjvisionpro.com.br/
# ARGENTINA    dev.jnjvisionpro.com.ar/
# MEXICO    dev.jnjvisionpro.com.mx/
# JAPÃO    dev.jnjvisionpro.jp/
# #UK    stage.jnjvisionpro.co.uk/
# EMEA    dev.jnjvisionpro.eu/

# *** Keywords ***
# Scenario 1: Do Registration in VPRO as Contact lens with role Optician
#    [Arguments]    ${URL}
#    Open the browser and access the site    ${browser}    ${URL}
#    Confirm US Residence
#    Click 'Join/Log in' button
#    Click on the Yes, create a profile button
#    Fill Practice/Business Information as Contact Lens
#    Fill Register form as Optician

# # Scenario 2: Do Registration in VPRO as Contact lens with role Administrative
# #    Fill Practice/Business Information as Contact Lens
# #    Fill Register form as Administrative

# # Scenario 3: Do Registration in VPRO as Contact lens with role Technician
# #    Fill Practice/Business Information as Contact Lens
# #    Fill Register form as Technician

# # Scenario 4: Do Registration in VPRO as Contact lens with role Student
# #    Fill Practice/Business Information as Contact Lens
# #    Fill Register form as Student

# # Scenario 5: Do Registration in VPRO as Contact lens with role Ophthalmologist
# #    Fill Practice/Business Information as Contact Lens
# #    Fill Register form as Ophthalmologist

# # Scenario 6: Do Registration in VPRO as Contact lens with role Other
# #    Fill Practice/Business Information as Contact Lens
# #    Fill Register form as Other

# # Scenario 7: Do Registration in VPRO as Contact lens with role Optometrist
# #    Fill Practice/Business Information as Contact Lens
# #    Fill Register form as Optometrist

