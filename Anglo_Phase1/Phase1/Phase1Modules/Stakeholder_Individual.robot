*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/StakeholderIndividual_keywords.robot

Force Tags      behavior-driven
Suite Teardown  Close Browser

*** Test Cases ***
Stakeholder Individual
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Stakeholder Individual
    FR1 - Add Supporting Documents
    FR1 - Update Stakeholder Details
    FR1 - Select Do not checkbox
    FR2 - Capture Stakeholder Analysis
    FR2 - Expand Guidlines Panel
    FR2 - Capture Topic Issue Assessment
    FR3 - Capture and Update Related Stakeholders
    FR3 - Related Stakeholder Create New Individual
    FR4 - Capture Related Groups
    FR4 - Related Groups Create New Stakeholder Group
    FR5 - Add/View Engagements
    FR6 - Add/View Engagement Plan
    FR7 - Add/View Commitments
    FR8 - View Grievances
    FR9 - Capture Actions
    FR10 - Edit Stakeholder Individual