$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("Login_Features/Login.feature");
formatter.feature({
  "line": 3,
  "name": "Login",
  "description": "",
  "id": "login",
  "keyword": "Feature",
  "tags": [
    {
      "line": 1,
      "name": "@Login"
    }
  ]
});
formatter.scenarioOutline({
  "line": 5,
  "name": "As a user I want to login with valid credentials",
  "description": "",
  "id": "login;as-a-user-i-want-to-login-with-valid-credentials",
  "type": "scenario_outline",
  "keyword": "Scenario Outline"
});
formatter.step({
  "line": 7,
  "name": "I have launched the browser",
  "keyword": "Given "
});
formatter.step({
  "line": 8,
  "name": "I enter \u003cUsernameID\u003e with ID \u003cUsernameValue\u003e",
  "keyword": "When "
});
formatter.step({
  "line": 9,
  "name": "I enter \u003cPasswordID\u003e with ID \u003cPasswordValue\u003e",
  "keyword": "When "
});
formatter.step({
  "line": 10,
  "name": "I click the \u003cButtonID\u003e Button with ID",
  "keyword": "When "
});
formatter.step({
  "line": 11,
  "name": "I wait for the element to be visible",
  "keyword": "And "
});
formatter.step({
  "line": 12,
  "name": "I wait for the element to be visible",
  "keyword": "And "
});
formatter.step({
  "line": 13,
  "name": "I wait for the element to be visible",
  "keyword": "And "
});
formatter.step({
  "line": 14,
  "name": "I send the Report",
  "keyword": "And "
});
formatter.examples({
  "comments": [
    {
      "line": 15,
      "value": "#    And I close the browser"
    }
  ],
  "line": 17,
  "name": "",
  "description": "",
  "id": "login;as-a-user-i-want-to-login-with-valid-credentials;",
  "rows": [
    {
      "cells": [
        "UsernameValue",
        "UsernameID",
        "PasswordValue",
        "PasswordID",
        "ButtonID",
        "HomepageFormID",
        "DrpID",
        "DrpValue",
        "ScrShtName"
      ],
      "line": 18,
      "id": "login;as-a-user-i-want-to-login-with-valid-credentials;;1"
    },
    {
      "cells": [
        "Isometrixsystem",
        "txtUsername",
        "1",
        "txtPassword",
        "btnLoginSubmit",
        "divPage",
        "businesunit",
        "global",
        "Login"
      ],
      "line": 19,
      "id": "login;as-a-user-i-want-to-login-with-valid-credentials;;2"
    }
  ],
  "keyword": "Examples"
});
formatter.scenario({
  "line": 19,
  "name": "As a user I want to login with valid credentials",
  "description": "",
  "id": "login;as-a-user-i-want-to-login-with-valid-credentials;;2",
  "type": "scenario",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "line": 1,
      "name": "@Login"
    }
  ]
});
formatter.step({
  "line": 7,
  "name": "I have launched the browser",
  "keyword": "Given "
});
formatter.step({
  "line": 8,
  "name": "I enter txtUsername with ID Isometrixsystem",
  "matchedColumns": [
    0,
    1
  ],
  "keyword": "When "
});
formatter.step({
  "line": 9,
  "name": "I enter txtPassword with ID 1",
  "matchedColumns": [
    2,
    3
  ],
  "keyword": "When "
});
formatter.step({
  "line": 10,
  "name": "I click the btnLoginSubmit Button with ID",
  "matchedColumns": [
    4
  ],
  "keyword": "When "
});
formatter.step({
  "line": 11,
  "name": "I wait for the element to be visible",
  "keyword": "And "
});
formatter.step({
  "line": 12,
  "name": "I wait for the element to be visible",
  "keyword": "And "
});
formatter.step({
  "line": 13,
  "name": "I wait for the element to be visible",
  "keyword": "And "
});
formatter.step({
  "line": 14,
  "name": "I send the Report",
  "keyword": "And "
});
formatter.match({
  "location": "Driver_Functions.iHaveLaunchedTheBrowser()"
});
formatter.result({
  "duration": 13050538400,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "txtUsername",
      "offset": 8
    },
    {
      "val": "Isometrixsystem",
      "offset": 28
    }
  ],
  "location": "SendKeys_Functions.iEnterMobileNumberIDWithIDMobileNumberValue(String,String)"
});
formatter.result({
  "duration": 873447300,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "txtPassword",
      "offset": 8
    },
    {
      "val": "1",
      "offset": 28
    }
  ],
  "location": "SendKeys_Functions.iEnterMobileNumberIDWithIDMobileNumberValue(String,String)"
});
formatter.result({
  "duration": 787666200,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "btnLoginSubmit",
      "offset": 12
    }
  ],
  "location": "Clicking_Functions.iClickTheButtonWithID(String)"
});
formatter.result({
  "duration": 1177171100,
  "status": "passed"
});
formatter.match({
  "location": "Driver_Functions.iWaitForTheElementToBeVisible()"
});
formatter.result({
  "duration": 2011410600,
  "status": "passed"
});
formatter.match({
  "location": "Driver_Functions.iWaitForTheElementToBeVisible()"
});
formatter.result({
  "duration": 2006432300,
  "status": "passed"
});
formatter.match({
  "location": "Driver_Functions.iWaitForTheElementToBeVisible()"
});
formatter.result({
  "duration": 2012521900,
  "status": "passed"
});
formatter.match({
  "location": "Reporting_Functions.iSendTheReport()"
});
formatter.result({
  "duration": 1927265400,
  "status": "passed"
});
});