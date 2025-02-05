*** Settings ***
Library      SeleniumLibrary
Library     os
Resource     ../Common/POM.robot
Resource    ../Common/variables.robot


*** Keywords ***
# User defined keywords for Registr User
Launch browser and open url
    open browser    ${APP_URL}    ${BROWSER}
    maximize browser window

Verify page and Signup / Sign in
    set browser implicit wait  5 seconds
    page should contain element      ${WebsiteLogo}
    click element       ${SignupLogin}
    element should contain      ${Signupform}       New User Signup!

Enter name and email address
        input text      ${Name}     ${RegCorrectName}
        input text      ${EmailAddress}     ${RegCorrectemail}
        click button  ${SignupButton}

Enter existing name and email address
        input text      ${Name}     ${ExistingName}
        input text      ${EmailAddress}     ${ExistingEmail}
        click button  ${SignupButton}


Verify that ENTER ACCOUNT INFORMATION is visible
        element should be visible   ${EnterEmailAccount}

Fill details: Title, Name, Email, Password, Date of birth
        select radio button     title     Mr
        input text      ${RegPassword}      Pass@123
        select from list by label   days    3
        select from list by label  months   September
        select from list by label  years    1983

Select checkbox Sign up for our newsletter!
    select checkbox  ${Newsletter}


Select checkbox Receive special offers from our partners!
        select checkbox  ${RecieveCheckboc}

Fill sign up details
           input text     ${RegFirstName}       Mudassir
           input text     ${RegLastName}        Ali
           input text     ${RegCompany}     Florida Software
           input text     ${RegAddress1}    Kondhwa
           input text     ${RegAddress2}    Pune
           select from list by label   country    India
           input text     ${RegState}    Maharashtra
           input text     ${RegCity}     Pune
           input text     ${RegZip}     411048
           input text     ${MobileNumber}   8767667900
           click button  ${RegCreateAccount}

Verify that 'ACCOUNT CREATED!' is visible
        element should contain  ${AccountCreated}       ACCOUNT CREATED!

Click 'Continue' button
        press keys    ${ContinueButton}     Enter

Verify that 'Logged in as username' is visible
        element should contain     ${LoginAs}       Logged in as

Click 'Delete Account' button
        click element    ${DeleteAccount}

Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button
            element should contain     ${AccountDeleted}        ACCOUNT DELETED!


Close my browsers
    close all browsers

#************************** Login Page Keywords ****************************
Login to your account with correct credentials
    input text      ${LoginEmail}    sayyed.m6@gmail.com
    input text       ${LoginPassword}     Pass@123
    click button    ${LoginButton}


Login to your account with incorrect credentials
    input text      ${LoginEmail}    sayyed.m@gmail.com
    input text       ${LoginPassword}     Pass@12
    click button    ${LoginButton}

Verify error message
       page should contain      Your email or password is incorrect!

Click 'Logout' button
        click element   ${Logout}

Verify that user is navigated to login page
        page should contain     Login to your account

Verify that user is navigated to existing email message
        page should contain         Email Address already exist!

#************************** Contact us Form Keywords ****************************
Click on 'Contact Us' button and Verify GET IN TOUCH Message
        click element   css:a[href='/contact_us']
        page should contain element  xpath://h2[contains(text(),'Get In Touch')]

Enter name, email, subject and message, upload File and submit
        input text      ${Contactus_Name}       Mudassir
        input text      ${Contactus_Email}      saydd.m@gmail.com
        input text      ${Contactus_Subject}    Subject
        input text      ${Contactus_Message}    This is message for the field
        sleep  3 seconds
        choose file     ${Contactus_UploadFile}     ${Contactus_File_to_upload}
        page should not contain  No file chosen
        click element    ${Contactus_Submit}
        handle alert  accept

Verify success message 'Success! Your details have been submitted successfully.' is visible
       page should contain element  ${ContactusFileUpload_SuccessMessage}

Click 'Home' button and verify that landed to home page successfully
       click element    ${Contactus_ClickHome}
       Verify that user is navigated to login page

#************************** Test Case Option Keywords ****************************
Click on 'Test Cases' button and Verify
        click element   ${TestCase_Menu}
        page should contain element     ${TestCase_Verify}

