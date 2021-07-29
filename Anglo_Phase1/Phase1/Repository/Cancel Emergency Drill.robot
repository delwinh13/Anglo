*** Variables ***
#*************************************************Cancel Emergency Drill ****************************************
${CancelDrillXpath}                             xpath://div[@name='ddl281']
${CancelDrillYesXpath}                           xpath://a[text()='Yes']/../a
${CancelPhase}                                   xpath:(//div[@id='step_3'])[2]
${EmergencyDateCompleted}                        xpath://div[@name='lbl494']