*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/vars.robot
Resource     ../Repository/Common.robot
Library     DateTime

*** Keywords ***
Get DateTime
  ${date1}=  Get Current Date  result_format=%Y-%m-%d %H-%M-%S
  [Return]     ${date1}

Screenshot
  [Arguments]  ${filename}
  Set Screenshot Directory  ${Path}
  #Wait Until Page Contains  Element
  # ${datetime}=  Get DateTime
  Capture Page Screenshot  ${filename}.${TYPE OF FILE}
  Log To Console  ${\n}Screenshot

SSO Sign In_PreProd
    Log To Console    SSO Sign In_PreProd
    set selenium implicit wait    10 seconds
    Wait Until Element Is Visible        ${SSOIsoSignInBtn}           30 seconds
    Click Element                        ${SSOIsoSignInBtn}
    Sleep   1