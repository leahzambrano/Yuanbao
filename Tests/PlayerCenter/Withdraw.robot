*** Settings ***
Resource  ../../Resources/Common.robot
Resource  ../../Resources/Home.robot
Resource  ../../Resources/Login.robot
Resource  ../../Resources/Withdraw.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test



*** Test Cases ***
Withdraw using "My Bank Account"
    [Tags]  smoke  positive  withdraw
    Home.Load
    Login.Valid Credentials
    Home.Select Withdraw menu
    Withdraw.Using "My Bank Account"

