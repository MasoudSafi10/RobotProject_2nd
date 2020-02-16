*** Settings ***
Library    SeleniumLibrary 

*** Variables *** 
${browser}    chrome
${URL}        http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling DropDowns and Lists
    Open Browser                    ${URL}    ${browser}
    Capture Element Screenshot      xpath://*[@id="wsb-element-00000000-0000-0000-0000-000450914873"]/div/div/a/img    C:/Users/MASAFI/Desktop/Tools/Eclipse/TeaCompany/Logo.png
    Capture Page Screenshot         C:/Users/MASAFI/Desktop/Tools/Eclipse/TeaCompany/Page.png 
    ${title}                        Get Title
    Log To Console                  ${title}    
    #Title Should Be                 practice-form
    Capture Element Screenshot      xpath://*[@id="wsb-element-00000000-0000-0000-0000-000452032346"]/div/h1    C:/Users/MASAFI/Desktop/Tools/Eclipse/TeaCompany/PracticeForm.png                         
    Input Text                      name=firstname    Masoud 
    Input Text                      name=lastname    Safi 
    Select Radio Button             sex    Female
    Select Radio Button             exp    5 
    Select Checkbox                 name=BlackTea
    Select Checkbox                 name=RedTea
    Select Checkbox                 name=oolongtea
    Unselect Checkbox               name=RedTea 
    Select Checkbox                 id=tool-0       
    Select From List By Label       id=continents     Australia
    #Set Selenium Speed              2seconds
    sleep    1
    Select From List By Index       id=continents    5   
    #Select From List By Value    id=continents 
        
       