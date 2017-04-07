*** Settings ***
Library  Selenium2Library


*** Variables ***
${WITHDRAW_URL} =  http://player.yuanbao.og.office/player_center/withdraw
${WITHDRAW_AMOUNT_TB} =  name=amount
${WITHDRAW_AMOUNT} =  10
${MYBANKACCOUNT_BTN} =  id=tab-preferred-account
${EXISTINGBANK_DROPDOWN} =  css=#preferred_account > option:nth-child(2)
${WITHDRAW_SUBMIT_BTN} =  css=#new_acct_form > div.col-md-10.col-md-offset-1 > div.form-group.form-inline > div > input.btn.btn-primary


*** Keywords ***
Using "My Bank Account"
    location should be  ${WITHDRAW_URL}
    input text  ${WITHDRAW_AMOUNT_TB}  ${WITHDRAW_AMOUNT}
    sleep  2s
    click element  ${MYBANKACCOUNT_BTN}
    sleep  1s
    click element  ${EXISTINGBANK_DROPDOWN}
    click button  ${WITHDRAW_SUBMIT_BTN}
    sleep  2s
