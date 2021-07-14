*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     String
Library     Process
Library     DateTime

Resource    ../../Resources/Common_keywords.robot
Resource    ../../Repository/Common.robot
Resource    ../../Repository/TrainingCourses_var.robot


*** Keywords ***
Launch IsoMetrix Application
    Log To Console    Launch IsoMetrix Application
    Open Browser  ${URL}  ${BROWSER}
    set selenium implicit wait    10 seconds
    Maximize Browser Window
    Title Should Be  IsoMetrix
    ${Date}=  Get DateTime
    Set Global Variable  ${Path}  ${EXECDIR}${/}../../Screenshots\\TrainingCourses\\${Date}


Login with Valid Credentials
    Log To Console    Login with Valid Credentials
    set selenium implicit wait    10 seconds
    Input Text                ${Usernameid}  ${Username Value}
    Input Text                ${Passwordid}  ${Password Value}
    Screenshot    Credentials enteredStakeholder_Engagement_vars.robot
    Click Element             ${SubmitButtonid}
    Screenshot    Login
    sleep      7 seconds

FR1-TrainingCourses
    Log To Console    Starting FR1-TrainingCourses

    Wait Until Element Is Visible        ${iFrame}    40 seconds
    Select Frame                         ${iFrame}
    Sleep     3 seconds
    Wait Until Element Is Visible        ${TrainingandSuggestionsXpath}    40 seconds
    Sleep    2 seconds
    Click Element                        ${TrainingandSuggestionsXpath}
    Sleep    2 seconds
    Click Element                        ${TrainingCoursesXpath}
    Wait Until Element Is Visible        ${TCAddButtonXpath}    20 seconds
    Click Element                        ${TCAddButtonXpath}
    Sleep    2 seconds

    #Click on TCProcessFlow
    Wait Until Element Is Visible       ${TCProcessFlow}    10 seconds
    Click Element                       ${TCProcessFlow}
    Sleep    5 seconds

    #validate TCAddphase
    Wait Until Element Is Visible       ${TCAddphase}    10 seconds
    Element Should Be Visible           ${TCAddphase}
    Sleep    5 seconds
    Screenshot  Training Courses add form opens in the Add phase

    Wait Until Element Is Visible        ${BusinessUnitDropdownXpath}
    Click Element                        ${BusinessUnitDropdownXpath}
    Sleep    1 seconds
    Click Element                        ${BUAAGOptionXpath}
    Sleep    1 seconds
    Click Element                        ${BUBCOOptionXpath}
    Sleep    1 seconds
    Click Element                        ${BUKOptionXpath}
    Sleep    5 seconds
    Click Element                        ${BUEOptionXpath}
    Sleep    1 seconds
    Click Element                        ${BHOCheckboxXpath}
    Sleep    1 seconds
    Click Element                        ${BusinessUnitDropdownXpath}
    Click Element                        ${FunctionLocationXpath}
    Wait Until Element Is Visible        ${FLSelectXpath}             40 seconds
    Click Element                        ${FLSelectXpath}
    Sleep    1 seconds
    Click Element                        ${TypeOfTraningXpath}
    Sleep    1 seconds
    Click Element                        ${TypeOfTraningSelectXpath}
    Sleep    1 seconds
    Input Text                           ${DescriptionXpath}    tester
    Click Element                        ${TCSaveandContinueXpath}
    Sleep    3 seconds
    Screenshot  Record is saved Courses sub-module is displayed

    Click Element                        ${CoursesAddXpath}
    Sleep    1 seconds

    #Optional Scenario:
    #Click Element                        ${SupportingDocumentTabXpath}
    #Sleep    1 seconds
    #Click Element                        ${LinkToADocumentXpath}
    #Sleep    1 seconds
    #Input Text                           ${EnterUrlXpath}    google.com
    #Sleep    1 seconds
    #Click Element                        ${EnterUrlADDButtonXpath}
    #Sleep    1 seconds
    #Click Element                        ${SDSaveButtonXpath}
    #Sleep    1 seconds

    #Click on CoursesProcessFlow
    Sleep    5 seconds
    Wait Until Element Is Visible       ${CoursesProcessFlow}    10 seconds
    Click Element                       ${CoursesProcessFlow}
    Sleep    5 seconds

    Input Text                           ${TitleXpath}    Mr
    Sleep    1 seconds
    Input Text                           ${CourseDescriptionXpath}    Tester
    Sleep    5 seconds
    Click Element                        ${LinkedDocumentationXpath}
    Sleep    5 seconds
    Click Element                        ${LDSelectionXpath}
    Sleep    3 seconds
    Click Element                        ${LinkedDocumentationXpath}
    Sleep    3 seconds
    Click Element                        ${SaveRecordXpath}
    Sleep    3 seconds

    #validate TCAddphase
    Wait Until Element Is Visible       ${CoursesEditPhase}    10 seconds
    Element Should Be Visible           ${CoursesEditPhase}
    Sleep    5 seconds
    Screenshot  Record is saved and automatically moves to the Edit Phase