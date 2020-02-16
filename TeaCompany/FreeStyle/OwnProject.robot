*** Settings ***
Library    SeleniumLibrary 

Test Setup    Log    I am inside Test Setup 
Test Teardown    Log    I am inside Test Teardown 


*** Variables ***
${title} 

*** Keywords ***

CloseBrowser1
    Close All Browsers    

*** Test Cases ***
TC1 - Open Internet Page
    [Setup]    Log    I am inside Test Setup 
    Open Browser    http://advantageonlineshopping.com/#/     chrome
    Maximize Browser Window
    ${title}=     Get Title 
     
    
TC2 - Main Page options
    Page Should Contain Element      xpath:/html/body/header/nav/div/a        C:/Users/MASAFI/Desktop/Tools/Eclipse/OwnProject/Logo.png
    Page Should Contain Link         xpath:/html/body/header/nav/ul/li[8]/a   
    Capture Element Screenshot       xpath:/html/body/header/nav/ul/li[8]/a   C:/Users/MASAFI/Desktop/Tools/Eclipse/OwnProject/OurProducts.png 
    Page Should Contain Link         xpath:/html/body/header/nav/ul/li[7]/a   
    Capture Element Screenshot       xpath:/html/body/header/nav/ul/li[7]/a   C:/Users/MASAFI/Desktop/Tools/Eclipse/OwnProject/SpecialOffer.png
    Page Should Contain Link         xpath:/html/body/header/nav/ul/li[6]/a   
    Capture Element Screenshot       xpath:/html/body/header/nav/ul/li[6]/a   C:/Users/MASAFI/Desktop/Tools/Eclipse/OwnProject/PopularItems.png
    Page Should Contain Link         xpath:/html/body/header/nav/ul/li[5]/a   
    Capture Element Screenshot       xpath:/html/body/header/nav/ul/li[5]/a   C:/Users/MASAFI/Desktop/Tools/Eclipse/OwnProject/ContactUs.png  
    Page Should Contain Element      xpath://*[@id="speakersImg"]    
    Capture Element Screenshot       id=speakersImg                           C:/Users/MASAFI/Desktop/Tools/Eclipse/OwnProject/Speakers.png 
    Page Should Contain Element      id=tabletsImg    
    Capture Element Screenshot       id=tabletsImg                            C:/Users/MASAFI/Desktop/Tools/Eclipse/OwnProject/Tablet.png 
    Page Should Contain Element      id=headphonesImg   
    Capture Element Screenshot       id=headphonesImg                         C:/Users/MASAFI/Desktop/Tools/Eclipse/OwnProject/Headphones.png
    Capture Page Screenshot                                                   C:/Users/MASAFI/Desktop/Tools/Eclipse/OwnProject/MainPage.png
    
TC3 - Confirming text and image of Special Offer
    Click Element                xpath:/html/body/header/nav/ul/li[7]/a   
    sleep    3
    Page Should Contain          EXPLORE THE NEW DESIGN
    Page Should Contain Image    xpath://*[@id="img-special-offer"]/figure/img     
    Capture Element Screenshot    xpath://*[@id="img-special-offer"]/figure/img    C:/Users/MASAFI/Desktop/Tools/Eclipse/OwnProject/Laptop.png    
    [Teardown]    Run Keyword If Test Passed    CloseBrowser1 
          
      
         
          
    
    