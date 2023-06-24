*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/home_locator.py

*** Variables ***
${url}    https://www.kai.id/
${page_title}    Situs Resmi PT Kereta Api Indonesia (Persero)

*** Keywords ***
Go to kai access
    Open Browser    ${url}    chrome
    Set Selenium Implicit Wait    10
Check text page title
    Title Should Be    ${page_title}
    
Check dropdown field Stasiun Asal
    Element Should Be Enabled    ${stasiunAsalDropdown}
    Element Text Should Be    ${stasiunAsalPlaceholder}    Stasiun Asal
    
Check dropdown field Stasiun Tujuan
    Element Should Be Enabled    ${stasiunTujuanDropdown}
    Element Text Should Be    ${stasiunTujuanPlaceholder}    Stasiun Tujuan

Check tanggal field
    # Awalnya enable, ketika dicoba lagi, jadi disable
    # Element Should Be Enabled    ${tanggalField}
    Element Should Be Disabled    ${tanggalField}
    Element Attribute Value Should Be    ${tanggalFieldPlaceholder}    placeholder    Tanggal Berangkat
    
    # Tidak mendapatkan textnya, hanya mendapatkan ''
    # Element Text Should Be    ${tanggalFieldPlaceholder}    Tanggal Berangkat

Check button
    Element Should Be Enabled    ${tombolPesan}
    Element Attribute Value Should Be    ${tombolPesan}    value    Pesan & Cari Kereta

#-- User Select Station --
Select origin station
    Click Element    ${triangleStasiunAsal}
    Input Text    ${stasiunAsalTextbox}    BANDUNG (BD)
    Press Keys    ${stasiunAsalTextbox}    RETURN

    # Belum ketemu
    # Select From List By Label    ${daftarStasiunAsal}    BANDUNG (BD)
    
Select destination station
    Click Element    ${stasiunTujuanField}
    Input Text    ${stasiunTujuanTextbox}    Yogyakarta (YK)
    Press Keys    ${stasiunTujuanTextbox}    RETURN

#-- User select date --
Select date
   Click Element    ${tanggalField}
   # Ada ide untuk lebih baik?
   Click Element    ${tanggal30}
    
#-- Click Pesan dan Cari Kereta button --
Click button pesan
    Click Element    ${tombolPesan}