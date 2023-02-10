*** Settings ***
Library     SeleniumLibrary
Library     DebugLibrary
Library     FakerLibrary
# Library    DataDriver
Resource    ../resources/resources.robot


*** Variables ***
${date_of_birth}                01/01/1988
${password}                     Test.123
${text_success_register}        Your registration has been completed. Thanks for signing up!
${npi_number}                   1871031880
${other_role}                   Agronomo
${student_school_name}          Inter American University of Puerto Rico, School of Optometry
${student_graduation_year}      2008
${student_degree}               Bachelor


*** Keywords ***
Click on the Yes, create a profile button
    Wait Until Element Is Visible    ${button_register}    timeout=20
    Click Element    ${button_register}

Select Practice/Business Information
    [Arguments]    ${speciality}
    Wait Until Element Is Enabled    ${vision_care_option_id}
    Repeat Keyword
    ...    20
    ...    Click Element
    ...    xpath://input[@name='submitted[specialty_selection_fieldset][specialty_step_fieldset][your_specialty]' and @value='${speciality}']/parent::div

Fill Practice/Business Information as ${speciality}
    Select Practice/Business Information    ${speciality}
    Wait Until Element Is Enabled    ${next_button}
    Click Element    ${next_button}

Select an option
    [Arguments]    ${select}    ${option}
    Wait Until Element Is Visible    ${select}    timeout=20
    Click Element    ${select}
    Click Element    xpath://div[@class='option' and contains(text(), '${option}')]

Select User Role
    [Arguments]    ${role}
    #Wait Until Element Is Enabled    xpath://*[@id='edit-submitted-personal-information-personal-information-next-wrapper-role-wrapper-role']//input[@value='${role}']/parent::div
    Repeat Keyword
    ...    30
    ...    Click Element
    ...    xpath://*[@id='edit-submitted-personal-information-personal-information-next-wrapper-role-wrapper-role']//input[@value='${role}']/parent::div
    IF    '${role}' == 'Optician' or '${role}' == 'Optometrist' or '${role}' == 'Ophthalmologist'
        Wait Until Element Is Visible    ${input_npi_number}
        Input Text    ${input_npi_number}    ${npi_number}
    ELSE IF    '${role}' == 'Other'
        Wait Until Element Is Visible    ${input_other_role}
        Scroll Element Into View    ${input_other_role}
        Input Text    ${input_other_role}    ${other_role}
    ELSE IF    '${role}' == 'Student'
        Select an option    ${select_school_name}    ${student_school_name}
        Select an option    ${select_graduation_year}    ${student_graduation_year}
        Input Text    ${input_student_degree}    ${student_degree}
    END

Fill Register form as ${role}
    Select an option    ${select_salutation}    Ms.
    Wait Until Element Is Visible    ${input_first_name}
    ${first_name}    FakerLibrary.First Name
    Input Text    ${input_first_name}    ${first_name}
    ${last_name}    FakerLibrary.Last Name
    Input Text    ${input_last_name}    ${last_name}
    ${email}    FakerLibrary.Email
    Input Text    ${input_email_address}    ${email}
    Press Keys    ${input_email_address}    TAB
    Input Text    ${input_date_of_birth}    ${date_of_birth}
    Sleep    5
    Select User Role    ${role}
    #Input Text    ${input_date_of_birth}    ${date_of_birth}
    Input Text    ${input_password_register}    ${password}
    Input Text    ${input_confirm_password}    ${password}
    Wait Until Element Is Enabled    ${button_submit_register}
    Click Element    ${button_submit_register}
    Wait Until Element Is Visible
    ...    xpath://div[@class='message-alert-content']//p[contains(text(), '${text_success_register}')]
    ...    timeout=20
    Capture Page Screenshot
