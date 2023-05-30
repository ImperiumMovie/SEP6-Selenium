*** Settings ***

Library    SeleniumLibrary

*** Keywords ***
Open Chrome
    ${device metrics}=    Create Dictionary    width=${360}    height=${640}    pixelRatio=${3.0}    userAgent=Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.166 Mobile Safari/535.19
    ${mobile emulation}=    Create Dictionary    deviceMetrics=${device metrics}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome options}    add_experimental_option    mobileEmulation    ${mobile emulation}
    Create Webdriver    Chrome    chrome_options=${chrome options}

*** Test Cases ***

Open Web Application

    Open Chrome
    Maximize Browser Window    