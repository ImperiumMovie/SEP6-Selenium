*** Settings ***

Library    SeleniumLibrary

*** Keywords ***
Open Chrome
    ${device metrics}=    Create Dictionary    width=${1366}    height=${768}    pixelRatio=${1.0}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome options}    add_argument    --start-maximized
    Create Webdriver    Chrome    chrome_options=${chrome options}


*** Test Cases ***

Open Web Application

    Open Chrome
    Go To    https://localhost:5005/login
    Sleep    2s
    Close Browser

Register a new account

    Open Chrome
    Go To    https://localhost:5005/login
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div/div[2]/a
    Sleep    2s
    Input Text    xpath:/html/body/div[1]/div/form/div[1]/input    Selenium Test
    Sleep    1s
    Input Text    xpath:/html/body/div[1]/div/form/div[2]/input    selenium1
    Sleep    1s
    Input Password    xpath:/html/body/div[1]/div/form/div[3]/input    selenium1234
    Sleep    1s
    Input Password    xpath:/html/body/div[1]/div/form/div[4]/input    selenium1234
    Sleep    1s
    Click Element    xpath:/html/body/div[1]/div/form/div[5]/button
    Sleep    3s
    Input Text    xpath:/html/body/div[1]/div/form/div[1]/input    selenium1
    Sleep    1s
    Input Password    xpath:/html/body/div[1]/div/form/div[2]/input    selenium1234
    Sleep    1s
    Click Element    xpath:/html/body/div[1]/div/form/div[3]/button
    Sleep    1s
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/h1
    Sleep    2s
    Close Browser

Login with an existing user account

    Open Chrome
    Go To    https://localhost:5005/login
    Sleep    2s
    Input Text    xpath:/html/body/div[1]/div/form/div[1]/input    messi00
    Sleep    1s
    Input Password    xpath:/html/body/div[1]/div/form/div[2]/input    password
    Sleep    1s
    Click Button    xpath:/html/body/div[1]/div/form/div[3]/button
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/h1
    Sleep    2s
    Close Browser

Display all most popular movies of year 1990s

    Open Chrome
    Go To    https://localhost:5005/login
    Sleep    2s
    Input Text    xpath:/html/body/div[1]/div/form/div[1]/input    messi00
    Sleep    1s
    Input Password    xpath:/html/body/div[1]/div/form/div[2]/input    password
    Sleep    1s
    Click Button    xpath:/html/body/div[1]/div/form/div[3]/button
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/h1
    Sleep    1s
    Click Element    xpath://*[@id="filter-decade"]
    Wait Until Element Is Visible    xpath://*[@id="filter-decade"]/option[5]
    Click Element    xpath://*[@id="filter-decade"]/option[5]
    Sleep    1s
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/div[2]/div[1]/div[1]/img
    Sleep    2s
    Close Browser

Search a movie

    Open Chrome
    Go To    https://localhost:5005/login
    Sleep    2s
    Input Text    xpath:/html/body/div[1]/div/form/div[1]/input    messi00
    Sleep    1s
    Input Password    xpath:/html/body/div[1]/div/form/div[2]/input    password
    Sleep    1s
    Click Button    xpath:/html/body/div[1]/div/form/div[3]/button
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/h1
    Sleep    1s
    Click Element    xpath:/html/body/div[1]/div/div[1]/div[1]/button
    Sleep    1s
    Input Text    xpath:/html/body/div[1]/div/div[1]/div[1]/input    Cars
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div/div[1]/div[1]/button[1]
    Sleep    2s
    Sleep    1s
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/div[2]/div/div[1]/img
    Sleep    2s
    Close Browser

Open Movie Overview

    Open Chrome
    Go To    https://localhost:5005/login
    Sleep    2s
    Input Text    xpath:/html/body/div[1]/div/form/div[1]/input    messi00
    Sleep    1s
    Input Password    xpath:/html/body/div[1]/div/form/div[2]/input    password
    Sleep    1s
    Click Button    xpath:/html/body/div[1]/div/form/div[3]/button
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/h1
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div/div[2]/div[1]/div[1]/img
    Sleep    2s
    Element Should Be Visible    xpath:/html/body/div[1]/div[3]/button
    Sleep    2s
    Close Browser

Open Hall Of Fame

    Open Chrome
    Go To    https://localhost:5005/login
    Sleep    2s
    Input Text    xpath:/html/body/div[1]/div/form/div[1]/input    messi00
    Sleep    1s
    Input Password    xpath:/html/body/div[1]/div/form/div[2]/input    password
    Sleep    1s
    Click Button    xpath:/html/body/div[1]/div/form/div[3]/button
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/h1
    Sleep    1s
    Click Element    xpath:/html/body/div[1]/div/img
    Sleep    10s
    Element Should Be Visible    xpath:/html/body/div[1]/div/div[1]/img
    Sleep    2s
    Close Browser

Access account's favorite list

    Open Chrome
    Go To    https://localhost:5005/login
    Sleep    2s
    Input Text    xpath:/html/body/div[1]/div/form/div[1]/input    messi00
    Sleep    1s
    Input Password    xpath:/html/body/div[1]/div/form/div[2]/input    password
    Sleep    1s
    Click Button    xpath:/html/body/div[1]/div/form/div[3]/button
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/h1
    Sleep    1s
    Click Element    xpath:/html/body/div[1]/div/div[1]/div[2]/label
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div/div[1]/div[2]/ul/li[1]/a
    Sleep    5s
    Element Should Be Visible    xpath:/html/body/div[1]/h1
    Sleep    2s
    Close Browser

Access other account's favorite lists

    Open Chrome
    Go To    https://localhost:5005/login
    Sleep    2s
    Input Text    xpath:/html/body/div[1]/div/form/div[1]/input    messi00
    Sleep    1s
    Input Password    xpath:/html/body/div[1]/div/form/div[2]/input    password
    Sleep    1s
    Click Button    xpath:/html/body/div[1]/div/form/div[3]/button
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div/h1
    Sleep    1s
    Click Element    xpath:/html/body/div[1]/div/div[1]/div[2]/label
    Sleep    2s
    Click Element    xpath:/html/body/div[1]/div/div[1]/div[2]/ul/li[2]/a
    Sleep    5s
    Element Should Be Visible    xpath:/html/body/div[1]/h3
    Sleep    2s
    Close Browser