*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/AuditTemplate_keywords.robot

Force Tags      behavior-driven
Suite Teardown  Close Browser

*** Test Cases ***
Audit Template
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Add an Audit Template
    FR1 - Create an Audit Template
    FR2 - Archive Audit Template
    FR3 - Update Audit Template Checklist