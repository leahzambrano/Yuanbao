*** Settings ***
Library  Selenium2Library


*** Variables ***
#all variables are stored in Variables.robot file
${YUANBAO_PC} =  http://player.yuanbao.og.office
${DEPOSIT_MENU} =  css=#bs-example-navbar-collapse-1 > ul:nth-child(1) > li:nth-child(2) > a
${PROFILE_MENU} =  css=#bs-example-navbar-collapse-1 > ul:nth-child(1) > li:nth-child(1) > a
${WITHDRAW_MENU} =  css=#bs-example-navbar-collapse-1 > ul:nth-child(1) > li:nth-child(3) > a


*** Keywords ***
Load
    Go to  ${YUANBAO_PC}
    sleep  2s

Select Deposit Menu
    click element  ${DEPOSIT_MENU}

Select Withdraw Menu
    click element  ${WITHDRAW_MENU}

Select Profile Menu
    click element  ${PROFILE_MENU}