*** Settings ***
Documentation    Anglo Phase 1
Library     SeleniumLibrary
Resource    ../Resources/AuditManagement_keywords.robot

Force Tags      behavior-driven
# Suite Teardown  Close Browser

*** Test Cases ***

Audit Management
    Launch IsoMetrix Application
    Login with Valid Credentials
    FR1 - Capture Audit Management Record
    FR2 - Approve the audit schedule
    FR2 - Approve the audit schedule Alternate Scenario
    FR2 - Approve the audit schedule other than auditee
    FR3 - Propose new dates for the audit
#    FR3 - Propose new dates as the auditee
    FR4 - Capture Audit Team
    FR5 - View Related Events
    FR6 - Start Audit
    FR7 - Conduct an internal or supplier Audit
    FR7 - Continue an internal or supplier Audit
    FR7 - Capture Findings Against Audit
    FR7 - Capture Finding Actions
    FR7 - View Finding Actions Record
    FR8 - Conduct an external Audit
    FR10 - Request Audit Verification
    FR11 - Verification Approval
    FR11 - Verification Rejected
    Close Browser