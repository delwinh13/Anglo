*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/AuditUniverse_keywords.robot

Force Tags      behavior-driven
Suite Teardown  Close Browser

*** Test Cases ***

Audit Universe
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Add Audit Universe
    FR2 - Add Audit Section
    FR3 - Add Audit Question
    FR4 - Edit Audit Universe
    FR5 - Edit Audit Section
    FR6 - Edit Audit Question