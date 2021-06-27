package Execution_Scripts;


import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.IOException;

/**
 * Created by Daisy Kopano
 * 13 March  2020
 */

public class SendKeys_Functions extends Main_Functions {

    @When("^I enter (.*) with ID (.*)$")
    public void iEnterMobileNumberIDWithIDMobileNumberValue(String ElementWithID, String Value) throws IOException, InvalidFormatException, InterruptedException, ClassNotFoundException {
        try{
            new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.id(ElementWithID)));
            driver.findElement(By.id(ElementWithID)).sendKeys(Value);
            Thread.sleep(400);
            //addScreenshot("Screenshots");
            PassScreenshot("PassScreenshots");

        } catch (Throwable t) {
            FailedScreenshot("Screenshots");
           // writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ID");

        }

    }

    @When("^I enter (.*) with Name (.*)$")

    public void iEnterValueWithNameID(String ElementWithName, String Value) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {

        try{
        new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.id(ElementWithName)));
        driver.findElement(By.id(ElementWithName)).sendKeys(Value);
            Thread.sleep(400);
            PassScreenshot("PassScreenshots");

    } catch (Throwable t) {
            FailedScreenshot("Screenshots");
       // writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ID");

    }

}


    @Then("^I upload a file$")
    public void iUploadAFile() {

        WebElement element = driver.findElement(By.name("datafile"));
        element.sendKeys("C:\\Automation\\Maven_SA_Web\\Documents\\HackJam.pdf");
    }


    @When("^I clear a inputbox using ID (.*)$")
    public void iClearAInputboxUsingIDInputboxID(String FieldID) {

        WebElement TextBox = driver.findElement(By.id("FieldID"));
        TextBox.sendKeys(Keys.BACK_SPACE);

    }

    @And("^I enter (.*) using xpath (.*)$")
    public void iEnterViewNameUsingXpathViewFieldXpath(String ElementXpath, String ElementValue) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {
        try{
        new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.xpath(ElementXpath)));
        driver.findElement(By.xpath(ElementXpath)).sendKeys(ElementValue);
            Thread.sleep(400);
            PassScreenshot("PassScreenshots");


        } catch (Throwable t) {
            FailedScreenshot("Screenshots");
           // writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ID");

        }
    }



    @And("^I select value (.*) from a dropdown (.*)$")
    public void iSelectValueSourceTypeDrpdwnIDFromADropdownDrpdownValue(String DrpdownID ,String DropdownValue) throws IOException, InterruptedException, ClassNotFoundException, InvalidFormatException {
try {

        WebElement SelectDrodownValue = driver.findElement(By.id(DrpdownID));
        Select select = new Select(SelectDrodownValue);
        select.selectByVisibleText(DropdownValue);

      Thread.sleep(400);
    PassScreenshot("PassScreenshots");

        } catch (Throwable t) {
    FailedScreenshot("Screenshots");
            //writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ID");

        }
    }


    @When("^I click a dropdown with xpath (.*) and select value (.*)$")
    public void iClickADropdownWithXpathAndSelectValue(String DropdownXpath, String DropdownText) {
        WebElement SelectDrodown = driver.findElement(By.xpath(DropdownXpath));
        Select select = new Select(SelectDrodown);
        select.selectByVisibleText(DropdownText);
    }

    @When("^I clear an input using ID (.*)$")
    public void iClearAnInputUsingID(String FieldID) {
        driver.findElement(By.id(FieldID)).clear();

    }

}




