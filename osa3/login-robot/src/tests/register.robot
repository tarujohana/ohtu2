*** Settings ***

Resource  resource.robot
Test Setup  Input New Command

*** Test Cases ***
Register With Valid Username And Password
    Input  Credentials  validuser  Valid123!
    Output Should Contain  Registration successful


*** Keywords***
Input New Command And Create User
    [Arguments] ${username}  ${password}
    Input New Command
    Create User  ${username}  ${password}