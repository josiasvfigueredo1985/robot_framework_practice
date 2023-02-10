*** Variables ***
${group_name_radio_option}  submitted[specialty_selection_fieldset][specialty_step_fieldset][your_specialty]
${button_register}      class:js-register-button
${vision_care_option}   submitted[specialty_selection_fieldset][specialty_step_fieldset][your_specialty]
${vision_care_option_id}  //div[@class='form-item form-type-radio form-item-submitted-specialty-selection-fieldset-specialty-step-fieldset-your-specialty'][1]
${next_button}          //a[@class='button--default next-btn-fields-required show-step first-step specialty-selection js-not-ignore-enable-disable']

${select_salutation}    xpath://div[@class='selectize-control js-field-title form-select selectize-processed single']
${select_school_name}   xpath://div[@class='selectize-control field-school-name form-select required selectize-processed single']
${select_graduation_year}  xpath://div[@class='selectize-control js-field-graduation-year year form-select selectize-processed single']

${input_first_name}   id:edit-submitted-personal-information-first-name
${input_last_name}    id:edit-submitted-personal-information-last-name
${input_email_address}    id:edit-submitted-personal-information-e-mail-address
${input_date_of_birth}    id:edit-submitted-personal-information-date-of-birth
${input_password_register}         xpath://*[@id='edit-submitted-personal-information-password-and-security-password-security-next-wrapper-password']
${input_confirm_password}  xpath://*[@id='edit-submitted-personal-information-password-and-security-password-security-next-wrapper-repeat-password']
${input_npi_number}    id:edit-submitted-personal-information-personal-information-next-wrapper-npi-section-npi-number
${input_other_role}    id:edit-submitted-personal-information-personal-information-next-wrapper-role-wrapper-other-role
${input_student_degree}  id:edit-submitted-personal-information-personal-information-next-wrapper-your-school-details-degree

${button_submit_register}  //button[@class='webform-submit button-primary button--default btn btn-cta-full form-submit']
