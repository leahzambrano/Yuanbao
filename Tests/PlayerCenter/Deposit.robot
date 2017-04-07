*** Settings ***
Resource  ../../Resources/Common.robot
Resource  ../../Resources/Home.robot
Resource  ../../Resources/Login.robot
Resource  ../../Resources/Deposit.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test



*** Test Cases ***
Deposit using Third-party payment
    [Tags]  smoke  positive  deposit
    Home.Load
    Login.Valid Credentials
    Home.Select Deposit menu
    Deposit.Third-party payment