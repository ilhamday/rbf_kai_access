*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/reservation_locator.py

*** Variables ***
# nama variable awalnya sama, tapi yang terekam hanya yang awal
${page_title_reservation}    PT Kereta Api Indonesia - Reservasi Tiket

*** Keywords ***

# Muncul error karena keywordnya sama
Check text page title reservation
    Title Should Be    ${page_title_reservation}

# Check Stasiun Asal field display Bandung
#     Element Text Should Be    ${stasiunAsalField}    BANDUNG (BD)

# Check Stasiun Tujuan field display Yogyakarta
#     Element Text Should Be    ${stasiunTujuanField}    Yogyakarta (YK)

# Check Tanggal Keberangkatan field display 30-Juni-2023
#     Element Text Should Be    ${tanggalKeberangkatField}    30-Juni-2023