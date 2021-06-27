package com.javapointers;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.AfterClass;
import org.junit.runner.RunWith;

import static com.cucumber.listener.Reporter.loadXMLConfig;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/Features",
        glue = "Execution_Scripts",
       plugin = {"pretty", "html:target/cucumber-html-report", "json:target/cucumber.json", "junit:target/cucumber.xml",
               "com.cucumber.listener.ExtentCucumberFormatter:target/cucumber-reports/report.html"},

//        plugin = {//"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:",
//        "com.vimalselvam.cucumber.listener.ExtentCucumberFormatter:path/report.html"},
       // tags = "@ModuleSourcesC1,@ModuleSourcesC2,@ModuleSourcesC3,@ModuleSourcesFilter"
        tags="@Login"
)
public class CucumberTest {

    @AfterClass
    //public static void writeExtentReport() {
        //loadXMLConfig("...\\cucumberdatatables\\config\\extent-config.xml");
        public static void writeExtentReport(){loadXMLConfig("C:\\Users\\Kopano.Makanetleng\\Desktop\\Projects\\Automation_V4_jenkins\\config\\extent-config.xml");

    }
}
