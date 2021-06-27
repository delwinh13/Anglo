package Execution_Scripts;

import cucumber.api.java.en.And;

import java.io.IOException;

public class Reporting_Functions extends Main_Functions {



    @And("^I capture screenshot$")
    public void iCaptureScreenshot() {


    }


    @And("^I send the Report$")
    public void iSendTheReport() throws IOException {
        sendmails();
    }
}
