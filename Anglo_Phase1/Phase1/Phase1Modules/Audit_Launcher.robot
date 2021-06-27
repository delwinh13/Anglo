*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/AuditLauncher_keywords.robot

Force Tags      behavior-driven
Suite Teardown  Close Browser

*** Test Cases ***
Audit Launcher
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Add Internal Audit Launcher
    FR1 - Add Supplier Audit Launcher
    FR1 - Add External Audit Launcher
    FR2 - Add Site Management
    FR3 - Edit Audit Launcher
    FR5 - Edit Site Management