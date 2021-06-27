package com.javapointers.datatables;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.junit.Cucumber;
import io.cucumber.datatable.DataTable;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.validator.routines.EmailValidator;
import org.junit.Assert;
import org.junit.runner.RunWith;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class SignUpStepDef {

    private boolean isValid;
    private List<Boolean> formValidationResults;

    @Given("User submits a valid registration form")
    public void userSubmitsAValidRegistrationForm(DataTable dataTable) {
        List<String> signUpForm = dataTable.asList();
        String fName = signUpForm.get(0);
        String lName = signUpForm.get(1);
        String username = signUpForm.get(2);
        String password = signUpForm.get(3);
        String email = signUpForm.get(4);
        isValid = isValid(fName, lName, username, password, email);
    }

    @Then("System proceeds with registration")
    public void systemProceedsWithRegistration() {
        Assert.assertTrue(isValid);
    }

    private boolean isValid(String fName, String lName, String username, String password, String email) {
        if (StringUtils.isAnyBlank(fName, lName, username, password, email)
                || !EmailValidator.getInstance().isValid(email)) {
            return false;
        }
        return true;
    }

    @Given("User submits a valid registration form header")
    public void userSubmitsAValidRegistrationFormHeader(DataTable dataTable) {
        List<Map<String, String>> signUpForms = dataTable.asMaps(String.class, String.class);
        String fName = signUpForms.get(0).get("FirstName");
        String lName = signUpForms.get(0).get("LastName");
        String username = signUpForms.get(0).get("Username");
        String password = signUpForms.get(0).get("Password");
        String email = signUpForms.get(0).get("Email");
        isValid = isValid(fName, lName, username, password, email);
    }

    @Given("User submits valid registration forms")
    public void userSubmitsValidRegistrationForms(DataTable dataTable) {
        List<Map<String, String>> signForms = dataTable.asMaps();
        formValidationResults = new ArrayList<Boolean>();
        for (Map<String, String> form : signForms) {

            String fName = form.get("FirstName");
            String lName = form.get("LastName");
            String username = form.get("Username");
            String password = form.get("Password");
            String email = form.get("Email");
            boolean validationResult = isValid(fName, lName, username, password, email);

            formValidationResults.add(validationResult);
        }
    }

    @Then("All Forms will proceed with registration")
    public void allFormsWillProceedWithRegistration() {
        for (Boolean isValid : formValidationResults) {
            Assert.assertTrue(isValid);
        }
    }

    @Given("User submits invalid registration forms")
    public void userSubmitsInvalidRegistrationForms(DataTable dataTable) {
        List<Map<String, String>> signForms = dataTable.asMaps();
        formValidationResults = new ArrayList<Boolean>();
        for (Map<String, String> form : signForms) {

            String fName = form.get("FirstName");
            String lName = form.get("LastName");
            String username = form.get("Username");
            String password = form.get("Password");
            String email = form.get("Email");
            boolean validationResult = isValid(fName, lName, username, password, email);

            formValidationResults.add(validationResult);
        }
    }

    @Then("All Forms will be declined and not registered")
    public void allFormsWillBeDeclinedAndNotRegistered() {
        for (Boolean isValid : formValidationResults) {
            Assert.assertFalse(isValid);
        }
    }
}
