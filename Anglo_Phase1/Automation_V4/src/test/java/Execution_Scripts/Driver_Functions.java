package Execution_Scripts;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.*;

import java.io.FileNotFoundException;
import java.io.IOException;

public class Driver_Functions extends Main_Functions {

//public CreateFolderGettersandSetters folderName = new CreateFolderGettersandSetters();

    @Given("^I have launched the browser$")
    public void iHaveLaunchedTheBrowser() throws IOException, InterruptedException, ClassNotFoundException, InvalidFormatException {
        createExcelFile();

        try{
        open_Browser(load_Global_Variables().getProperty("Browser1"), load_Global_Variables().getProperty("ISOMETRIX_URL"));
            Thread.sleep(400);
            PassScreenshot("PassScreenshots");
           // FailedScreenshotTest("sometrix","C:);


        } catch (Throwable t) {

            FailedScreenshot("Screenshots");
           // writeDataReportToExcel("Failed to sendkeys", "Failed", "Failed to sendkeys using ID");

        }

    }

    @And("^I wait for the element to be visible$")
    public void iWaitForTheElementToBeVisible() throws InterruptedException {
        Thread.sleep(2000);
    }

    @And("^I switch to an iframe$")
    public void iSwitchToAnIframe() throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {
try{
        driver.switchTo().frame("ifrMain");
        Thread.sleep(100);
    PassScreenshot( "PassScreenshots");
        //writeDataReportToExcel("Object clicked", "Passed", "Passed Successfully");

    } catch (Throwable t) {
    FailedScreenshot("Screenshots");
        //writeDataReportToExcel("Failed to switch to an Iframe", "Failed", "Failed to click an object with particular text");
    }
    }

    @And("^I switch to the ifrLeftCover frame$")
    public void iSwitchToTheIfrLeftCoverFrame() throws InterruptedException {
        driver.switchTo().frame("ifrLeftCover");
        Thread.sleep(100);    }

    @And("^I wait for the element to be saved$")
    public void iWaitForTheElementToBeSaved() throws InterruptedException {
        Thread.sleep(2000);  }

    @And("^I switch to popup window$")
    public void iSwitchToPopupWindow() throws InterruptedException, FileNotFoundException {

    }

    @And("^Switch back to default content$")
    public void switchBackToDefaultContent() throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {
        try{
            PassScreenshot( "Screenshots");
        driver.switchTo().defaultContent();

        Thread.sleep(400);
            PassScreenshot( "PassScreenshots");
        //writeDataReportToExcel("Object clicked", "Passed", "Passed Successfully");

    } catch (Throwable t) {
            FailedScreenshot("Screenshots");
       // writeDataReportToExcel("Failed to switch to Default Content", "Failed", "Failed to click an object with particular text");
    }

}

    @And("^I switch to email trigger Iframe$")
    public void iSwitchToEmailTriggerIframe() throws InterruptedException {
        driver.switchTo().frame("notificationTriggerContent");
        Thread.sleep(100);

    }



    @When("^I wait for the element with  (.*) Xpath to load$")
    public void iWaitForTheElementWithXpathToLoad(String ObjectXpath) throws IOException {
        elementToBeClickable_xpath(ObjectXpath);
    }

    @When("^I wait for the element with (.*) Xpath to load$")
    public void iWaitForTheElementWithObjectXpathXpathToLoad(String ObjectXpath) throws IOException {
        elementToBeClickable_xpath(ObjectXpath);
    }

    @And("^I scroll down$")
    public void iScrollDown() {
        JavascriptExecutor jsx = (JavascriptExecutor)driver;
        jsx.executeScript("window.scrollBy(0,450)", "");
    }

    @Then("^I close the browser$")
    public void iCloseTheBrowser() throws IOException, InterruptedException, ClassNotFoundException {
        try{
        driver.close();
        driver.quit();
        Thread.sleep(400);
        Process p = Runtime.getRuntime().exec("taskkill /F /IM ChromeDriver.exe");
        PassScreenshot("PassScreenshots");

    } catch (Throwable t) {
            FailedScreenshot("Screenshots");
        // writeDataReportToExcel("Failed to switch to Default Content", "Failed", "Failed to click an object with particular text");
    }
    }
}