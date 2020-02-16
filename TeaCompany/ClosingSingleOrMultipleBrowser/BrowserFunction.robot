*** Settings ***
Library    SeleniumLibrary 
   
*** Variables ***
${url}        http://newtours.demoaut.com/  
${browser}    chrome

*** Test Cases ***
Tc1 Closing All Browser
    Open Browser    http://demowebshop.tricentis.com/    chrome
    Maximize Browser Window
    
    Open Browser    http://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window  
    
    Open Browser     https://www.youtube.com/watch?v=ulf_1Gmkfak    chrome
    
    
    Close All Browsers
    
Tc2 Handle Alerts
    Open Browser                http://testautomationpractice.blogspot.com/    chrome
    Capture Page Screenshot     C:/Users/MASAFI/Desktop/Tools/Eclipse/BrowserFunctions/BeforePopUp.png
    Click Element               xpath://*[@id="HTML9"]/div[1]/button
    Alert Should Be Present     Press a button!
    sleep                       2
    Capture Page Screenshot     C:/Users/MASAFI/Desktop/Tools/Eclipse/BrowserFunctions/AfterPopUp.png 
    sleep                       2
    Close Browser
    
Tc3 Handle Frames
    Open Browser                https://seleniumhq.github.io/selenium/docs/api/java/index    chrome
    Select Frame                name=packageListFrame
    Click Link                  org.openqa.selenium    
    Unselect Frame
    sleep    3
    Select Frame                name=packageFrame
    Click Link                  WebDriver   
    Unselect Frame          
    sleep    3
    Select Frame                name=classFrame
    Click Element               xpath:/html/body/div[1]/ul/li[7]/a
    Capture Page Screenshot     C:/Users/MASAFI/Desktop/Tools/Eclipse/BrowserFunctions/Frames.png       
    Unselect Frame 
    Frame Should Contain    name=classFrame    Field Summary     
    
Tc4 Tab Switting
    Open Browser    http://demo.automationtesting.in/Windows.html    chrome
    Click Element    xpath://*[@id="Tabbed"]/a/button    
    Select Window    title=Sakinalium | Home
    Click Element    xpath://*[@id="container"]/header/div/div/div[2]/ul/li[4]/a    
    sleep    3
    Close All Browsers
    
Tc5 Multiple Browser
   Open Browser    https://www.google.nl/    chrome
   Maximize Browser Window
   Capture Element Screenshot    id=body    C:/Users/MASAFI/Desktop/Tools/Eclipse/BrowserFunctions/GoogleBody.png 
   sleep    3
   Open Browser    https://www.bing.com/    chrome
   Maximize Browser Window
   Capture Element Screenshot    xpath:/html/body/div[3]    C:/Users/MASAFI/Desktop/Tools/Eclipse/BrowserFunctions/BingBody.png              
   Switch Browser    1
   sleep    3 
   ${title1}=    get title 
   Log To Console    ${title1}  
   Switch Browser    2
   sleep    3   
    ${title2}=    get title 
   Log To Console    ${title2}  
   sleep    3 
   Close All Browsers 
   
Tc6 SteeringBrowserCommands
    Open Browser    https://www.google.nl/    chrome
    ${Loc}=    Get Location
    Log To Console    ${Loc}    
    
    Go To    https://www.bing.com/    
    ${Loc}=    Get Location
    Log To Console    ${Loc}
    
    Go Back
    ${Loc}=    Get Location
    Log To Console    ${Loc} 
    
tc7 Keywords
    AppearBrowser
    LogIn 
    ${links}=    Get All Links
    Log To Console    ${links}    
    Capture Element Screenshot    xpath:/html/body/div/table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/p[1]/img    C:/Users/MASAFI/Desktop/Tools/Eclipse/BrowserFunctions/Tours.png        
    Page Should Contain Button    name=findFlights    
    Capture Element Screenshot    name=findFlights    C:/Users/MASAFI/Desktop/Tools/Eclipse/BrowserFunctions/Continue.png
    Page Should Contain           © 2005, Mercury Interactive (v. 011003-1.01-058)      
    Capture Element Screenshot    xpath:/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[5]/td/div    C:/Users/MASAFI/Desktop/Tools/Eclipse/BrowserFunctions/2005.png     

youtube
    Open Browser    https://www.youtube.com/watch?v=qqbgRXlX4w0    chrome
    ${links}=    Get All Links
    Log To Console    ${links}  
    Close All Browsers
*** Keywords ***
AppearBrowser   
    Open Browser    ${url}    ${browser}
    sleep    3
    ${title}=    Get Title
    Log    ${title}
    [Return]    ${title}    
    
LogIn
    Input Text    name:userName    mercury       
    Input Password    name:password    mercury  
    Click Button    name=login   
    

    
   
    

        