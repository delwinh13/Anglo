package Execution_Scripts;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.IOException;

/**
 * Created by Kopano Daisy
 *  13 March 2020
 */
public class Clicking_Functions extends Main_Functions {


    @When("^I click the (.*) Button with ID$")
    public void iClickTheButtonWithID(String ButtonWithID) throws Throwable {
        try {

        WebElement element = driver.findElement(By.id(ButtonWithID));
        Actions actions = new Actions(driver);
        actions.moveToElement(element).click().perform();
            Thread.sleep(700);
            PassScreenshot( "PassScreenshots");

        } catch (Throwable t) {
            FailedScreenshot("Screenshots");
            //writeDataReportToExcel("Failed to click an object", "Failed", "Failed to click an object with particular text");
        }
    }


    @When("^I click on the (.*) with the text (.*)$")
    public void iClickOnTheElementTypeWithTheTextElementText(String TagType, String TextOnElement) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {
        try{

            String path = String.format("//%s[contains(text(),'%s')]", TagType, TextOnElement);
            //div[@class='navContainer loggedOut']//p[contains(text(),'Join Us')]
            driver.findElement(By.xpath(path)).click();
            Thread.sleep(400);
            PassScreenshot( "PassScreenshots");
            //writeDataReportToExcel("Object clicked", "Passed", "Passed Successfully");
        } catch (Throwable t) {
            FailedScreenshot("Screenshots");
            //writeDataReportToExcel("Failed to click an object", "Failed", "Failed to click an object with particular text");
        }

    }


    @Then("^I click element by its coordinates (.*)$")
    public void iClickElementByItsCoordinatesElement(String object_id) {
        new WebDriverWait(driver, 300).until(ExpectedConditions.elementToBeClickable(By.xpath(object_id)));
        WebElement element = driver.findElement(By.xpath(object_id));
        Point point = element.getLocation();
        int xcord1 = point.getX();
        int ycord1 = point.getY();
        JavascriptExecutor executor1 = (JavascriptExecutor) driver;
        executor1.executeScript("window.scroll(" + xcord1 + ", " + ycord1 + ");", new Object[0]);
        executor1.executeScript("arguments[0].click();", new Object[]{element});
    }


    @And("^I click a checkbox (.*)  with ID$")
    public void iClickACheckboxCheckboxIDWithID(String CheckboxID) throws InterruptedException, IOException, InvalidFormatException, ClassNotFoundException {
try{
        new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.id(CheckboxID)));
        driver.findElement(By.id(CheckboxID)).click();
        Thread.sleep(400);
    PassScreenshot( "PassScreenshots");


} catch (Throwable t) {
    FailedScreenshot("Screenshots");
    //writeDataReportToExcel("Failed to click an object", "Failed", "Failed to click an object with particular text");
}

    }


    @And("^I click the login button$")
    public void iClickTheLoginButton() throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {


        try{
            String path = String.format("//div[@class='loginButton']//p[contains(text(),'Log In')]");
            //div[@class='navContainer loggedOut']//p[contains(text(),'Join Us')]
            Thread.sleep(400);
            driver.findElement(By.xpath(path)).click();
            PassScreenshot("PassScreenshots");

            writeDataReportToExcel("Isometrix", "Passed", "Login Passed Successfully");
        } catch (Throwable t) {
            FailedScreenshot("Screenshots");
            //writeDataReportToExcel("Isometrix", "Failed", "Failed to click the login button");


        }

    }


    @And("^I perform a right click action (.*)$")
    public void iPerformARightClickActionID(String ButtonWithID) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {
try{

    WebElement element = driver.findElement(By.id(ButtonWithID));
    Actions actions = new Actions(driver);
    actions.contextClick(element).perform();

//        Actions actions = new Actions(driver);
//        actions.moveToElement(element).click().perform();
//        actions.contextClick(element).sendKeys(Keys.ARROW_DOWN).sendKeys(Keys.RETURN).build().perform();
       Thread.sleep(400);
    PassScreenshot("PassScreenshots");

    } catch (Throwable t) {
    FailedScreenshot("Screenshots");
       // writeDataReportToExcel("Isometrix", "Failed", "Failed to click the login button");


    }
    }




    @Then("^I perform a right click function using xpath (.*)$")
    public void iPerformARightClickFunctionUsingXpathNewNodeID(String ButtonWithxpath) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {
try{
        WebElement element = driver.findElement(By.xpath(ButtonWithxpath));
        Actions actions = new Actions(driver);
        actions.moveToElement(element).click().perform();
        actions.contextClick(element).sendKeys(Keys.ARROW_DOWN).sendKeys(Keys.RETURN).build().perform();
       Thread.sleep(400);
    PassScreenshot("PassScreenshots");


    } catch (Throwable t) {
    FailedScreenshot("Screenshots");
       // writeDataReportToExcel("Isometrix", "Failed", "Failed to click the login button");
    }
    }
    @When("^I click the (.*) AddButton with ID and rename node (.*)$")
    public void iClickTheAddButtonWithIDAndRenameNode(String ButtonWithID, String NodeName) throws Throwable {
        try {

            WebElement element = driver.findElement(By.id(ButtonWithID));
            Actions actions = new Actions(driver);
            actions.moveToElement(element).click().perform();
            Thread.sleep(2000);
            actions.sendKeys(NodeName).perform();
            PassScreenshot( "PassScreenshots");

        } catch (Throwable t) {
            FailedScreenshot("Screenshots");
            writeDataReportToExcel("Failed to click an object", "Failed", "Failed to click an object with particular text");
        }
    }


    @Then("^I click on an element (.*) with xpath$")
    public void iClickOnAnElementSidebarlinkWithXpath(String ElementXpath) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {

        try{
            new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.xpath(ElementXpath)));
            Thread.sleep(400);
            driver.findElement(By.xpath(ElementXpath)).click();
            PassScreenshot( "PassScreenshots");

        } catch (Throwable t) {
            FailedScreenshot("Screenshots");
            //writeDataReportToExcel("Failed to click an object", "Failed", "Failed to click an object using xpath");
        }
    }

    @Then("^I right click on element using ID  (.*)$")
    public void iRightClickOnElementUsingID(String ElementwithID) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {

        try{
            WebElement element = driver.findElement(By.id(ElementwithID));
            Actions actions = new Actions(driver);
            actions.moveToElement(element).click().perform();
            actions.contextClick(element).sendKeys(Keys.ARROW_DOWN).sendKeys(Keys.RETURN).build().perform();
            Thread.sleep(400);
            PassScreenshot("PassScreenshots");

        } catch (Throwable t) {
            FailedScreenshot("Screenshots");
            //writeDataReportToExcel("Isometrix", "Failed", "Failed to click the login button");
        }
    }


    @When("^I click the (.*) Button with Name$")
    public void iClickTheTextFieldNameButtonWithName(String ElementName) throws InterruptedException, IOException, ClassNotFoundException, InvalidFormatException {

        try {

            new WebDriverWait(driver, 60).until(ExpectedConditions.presenceOfElementLocated(By.name(ElementName)));
            driver.findElement(By.name(ElementName)).click();
            Thread.sleep(700);
            PassScreenshot( "PassScreenshots");

        } catch (Throwable t) {
            FailedScreenshot("Screenshots");
            //writeDataReportToExcel("Failed to click an object", "Failed", "Failed to click an object with particular text");
        }
    }

    @When("^I clear a textfield with ID (.*)$")
    public void iClearATextfieldWithID(String TextFieldID) {

        WebElement element = driver.findElement(By.id(TextFieldID));
        Actions actions = new Actions(driver);
        element.sendKeys(Keys.BACK_SPACE);
//        element.sendKeys(Keys.BACK_SPACE);
//        element.sendKeys(Keys.BACK_SPACE);
    }


    @Then("^I drag (.*) and drop (.*)an element with xpath$")
    public void iDragDragElementXpathAndDropDropElementXpathAnElementWithXpath(String DragElement,String DropElement) {

        WebElement From = driver.findElement(By.xpath(DragElement));
        WebElement To = driver.findElement(By.xpath(DropElement));

        Actions builder = new Actions(driver);
        Action dragAnddrop = builder.clickAndHold(From)
                .moveToElement(To)
                .release(To)
                .build();
        dragAnddrop.perform();
    }
}

//    @Then("^I double click on an element using tagtype (.*) and text (.*)$")
//    public void iDoubleClickOnAnElementUsingTagtypeAndText(String Tag, String AttachedText) {
//
//        String ElementwithText = String.format("//%s[contains(text(),'%s')]", Tag, AttachedText);
//        Actions action = new Actions(driver);
//        action.doubleClick(ElementwithText).build().perform();
//
//    }
//}




