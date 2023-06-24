*** Settings ***
Resource    ../resources/page_object/home_pom.robot

*** Keywords ***
User on kai website
    Go to kai access
    Check text page title
    Check dropdown field Stasiun Asal
    Check dropdown field Stasiun Tujuan
    Check tanggal field
    Check button

User select station
    Select origin station
    Select destination station

User select date
    Select date

Click Pesan dan Cari Kereta button
    Click button pesan