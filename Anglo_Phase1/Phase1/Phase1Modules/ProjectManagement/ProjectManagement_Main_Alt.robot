*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../../Resources/ProjectManagement/ProjectManagement_Keywords_Main_Alt.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***
Project Management
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1- Capture Project Management Altenate Scenario
    FR2- Review Registered Project Altenate Scenario
    FR2- Review Registered Project Main Scenario Business Unit Approval
    FR2- Review Registered Project Main Scenario Group Approval
    FR3- Approve Project Altenate Scenario
    FR3- Approve Project Main Scenario
    FR3- Approve Project Main Scenario 2
    FR8-Capture Project Actions
