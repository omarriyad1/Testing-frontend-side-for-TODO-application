*** Settings ***
Library           SeleniumLibrary

*** Variables ***
@{table_rows}
${row}            ${EMPTY}
${text}           ${EMPTY}
${row_xpath}      ${EMPTY}
${button_xpath}    ${EMPTY}
${desired_text}    deleted list
${desired_textt}    list1

*** Test Cases ***
Add new TODO
    [Setup]    open browser    file:///D:/sana_talta/linkedin%20post/New%20folder/Assignment%203%20(1)/Assignment%203/Software-Testing-Assi3-Frontend/todo.html    chrome
    input text    id=todo    newlist
    input text    id=desc    descriptionnn
    sleep    2
    click element    xpath=/html/body/div/div/div[1]/form/button
    sleep    2
    Table Should Contain    xpath=/html/body/div/table    newlist
    sleep    2
    ${text_input}=    Get WebElement    id=todo
    ${value}=    Get Value    ${text_input}
    Should Be Empty    ${value}
    ${text_inputt}=    Get WebElement    id=desc
    ${valuee}=    Get Value    ${text_inputt}
    Should Be Empty    ${valuee}
    click element    xpath=/html/body/div/div/div[2]/button[1]
    click element    xpath=/html/body/div/table/tbody/tr/td[5]/button
    [Teardown]    Close Browser

Get all TODOs
    [Setup]    open browser    file:///D:/sana_talta/linkedin%20post/New%20folder/Assignment%203%20(1)/Assignment%203/Software-Testing-Assi3-Frontend/todo.html    chrome
    input text    id=todo    newlist
    input text    id=desc    descriptionnn
    sleep    2
    click element    xpath=/html/body/div/div/div[1]/form/button
    input text    id=todo    anotherlist
    input text    id=desc    itsdescriptionnn
    sleep    2
    click element    xpath=/html/body/div/div/div[1]/form/button
    sleep    2
    click element    xpath=/html/body/div/div/div[2]/button[1]
    sleep    2
    Table Should Contain    xpath=/html/body/div/table    newlist
    Table Should Contain    xpath=/html/body/div/table    anotherlist
    sleep    2
    click element    xpath=/html/body/div/table/tbody/tr[1]/td[5]/button
    click element    xpath=/html/body/div/table/tbody/tr/td[5]/button
    [Teardown]    Close Browser

Get completed TODOs
    [Setup]    open browser    file:///D:/sana_talta/linkedin%20post/New%20folder/Assignment%203%20(1)/Assignment%203/Software-Testing-Assi3-Frontend/todo.html    chrome
    input text    id=todo    list1
    input text    id=desc    desc1
    click element    xpath=/html/body/div/div/div[1]/form/button
    sleep    2
    input text    id=todo    list2
    input text    id=desc    desc2
    click element    xpath=/html/body/div/div/div[1]/form/button
    sleep    3
    click element    xpath=/html/body/div/div/div[2]/button[2]
    sleep    3
    Page Should Not Contain    xpath=/html/body/div/table    list1
    Page Should Not Contain    xpath=/html/body/div/table    list2
    sleep    3
    click element    xpath=/html/body/div/div/div[2]/button[2]
    click element    xpath=/html/body/div/div/div[2]/button[1]
    sleep    3
    select checkbox    id=checkbox-1
    select checkbox    id=checkbox-2
    sleep    3
    click element    xpath=/html/body/div/div/div[2]/button[2]
    Checkbox Should Be Selected    id=checkbox-1
    Checkbox Should Be Selected    id=checkbox-2
    sleep    3
    click element    xpath=/html/body/div/table/tbody/tr[1]/td[5]/button
    sleep    3
    click element    xpath=/html/body/div/table/tbody/tr/td[5]/button
    sleep    3
    [Teardown]    Close Browser

Delete
    [Setup]    open browser    file:///D:/sana_talta/linkedin%20post/New%20folder/Assignment%203%20(1)/Assignment%203/Software-Testing-Assi3-Frontend/todo.html    chrome
    input text    id=todo    deleted list
    input text    id=desc    it will deleted
    sleep    2
    click element    xpath=/html/body/div/div/div[1]/form/button
    sleep    2
    click element    xpath=/html/body/div/div/div[2]/button[1]
    sleep    2
    click element    xpath=/html/body/div/table/tbody/tr/td[5]/button
    sleep    2
    Page Should Not Contain    xpath=/html/body/div/table    deleted list
    [Teardown]    Close browser
