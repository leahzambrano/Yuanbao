*** Settings ***
Library  Selenium2Library


*** Variables ***
${THIRDPARTY_BTN} =  css=body > div.panel.panel-primary > div.panel-body > div.row.deposit-wrapper > div.deposit-list > div > div > a:nth-child(1)
${THIRDPARTY_URL} =  http://player.yuanbao.og.office/iframe_module/auto_payment/2
${DEPOSIT_AMOUNT_TB} =  deposit_amount
${DEPOSIT_AMOUNT} =  100
${DEPOSIT_SUBMIT_BTN} =  id=btn-submit

*** Keywords ***
Third-party payment
    click element  ${THIRDPARTY_BTN}
    location should be  ${THIRDPARTY_URL}
    input text  ${DEPOSIT_AMOUNT_TB}  ${DEPOSIT_AMOUNT}
    sleep  2s
    click element  ${DEPOSIT_SUBMIT_BTN}
    sleep  2s