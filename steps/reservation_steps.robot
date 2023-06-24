*** Settings ***
Resource    ../resources/page_object/reservation_pom.robot

*** Keywords ***
Display reservation page
    Check text page title reservation
    # Check Stasiun Asal field display Bandung
    # Check Stasiun Tujuan field display Yogyakarta
    # Check Tanggal Keberangkatan field display 30-Juni-2023