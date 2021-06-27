*** Settings ***
Library     SeleniumLibrary
Library    XML
Library    Process
Resource    ../Resources/vars_user.robot
Resource    Users_keywords.robot

*** Keywords ***
Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix

Login with Valid IsoMetrix Credentials
    set selenium implicit wait    10 seconds
    Wait Until Element Is Visible    ${IsoMetrixSignInBtnID}    40 seconds
    Click Element                    ${IsoMetrixSignInBtnID}
    Wait Until Element Is Visible    ${Usernameid}    40 seconds
    Input Text                       ${Usernameid}  ${Username Value}
    Input Text                       ${Passwordid}  ${Password Value}
    Click Element                    ${SubmitButtonid}

Create User
    Log To Console    Create User

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Sleep     3 seconds

    Wait Until Element Is Visible        ${SideMenuExpandCollapseXpath}    40 seconds
    Click Element                        ${SideMenuExpandCollapseXpath}      
    Wait Until Element Is Visible        ${UsersMenuLinkXpath}    40 seconds
    Click Element                        ${UsersMenuLinkXpath}

    Wait Until Element Is Not Visible    ${WaitDivXpath}    40 seconds
    Select Frame                         ${iFrame}
    Wait Until Element Is Visible        ${UsersAddBtnID}    40 seconds
    Click Element                        ${UsersAddBtnID}

    Unselect Frame

    Wait Until Element Is Visible        ${ConfirmationPopupMessageXpath}    40 seconds
    Click Element                        ${ConfirmationPopupNoBtnID}
    
    Wait Until Element Is Visible        ${DefaultEmailXpath}    40 seconds
    Click Element                        ${DefaultEmailXpath}
    Input Text                           ${DefaultEmailXpath}    muhammed.adams@isometrix.com
    

