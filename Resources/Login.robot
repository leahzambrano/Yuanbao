*** Settings ***
Library  Selenium2Library


*** Variables ***
${USERNAME_TB} =  name=username
${USERNAME} =  testley1
${PASSWORD_TB} =  name=password
${PASSWORD} =  asdf123
${LOGIN_BTN} =  css=body > div.panel.panel-primary > div.panel-body > div > div > div.panel.panel-primary > div.panel-body > form > center > div > input


*** Keywords ***
Valid Credentials
    input text  ${USERNAME_TB}  ${USERNAME}
    input text  ${PASSWORD_TB}  ${PASSWORD}
    click button  ${LOGIN_BTN}
