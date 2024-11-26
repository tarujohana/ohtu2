*** Test Cases ***
Register With Valid Username And Password
    Input  Credentials  validuser  Valid123!
    Output Should Contain  Registration successful

*** Keywords***
Input New Command And Create User
    Input ${username}  ${password}
    Input New Command
    Create User  ${username}  ${password}