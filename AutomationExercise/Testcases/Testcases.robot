*** Settings ***
Library     SeleniumLibrary
Resource        ../Common/User_Keywords.robot
Suite Setup         Launch browser and open url
Suite Teardown      Close my browsers


*** Test Cases ***
Test Case 1: Register New User
        [Tags]      Smoke
        [Documentation]     Validate Functionality of NEW USER registration
        Verify page and Signup / Sign in
        Enter name and email address
        Verify that ENTER ACCOUNT INFORMATION is visible
        Fill details: Title, Name, Email, Password, Date of birth
        Select checkbox Sign up for our newsletter!
        Select checkbox Receive special offers from our partners!
        Fill sign up details
        Verify that 'ACCOUNT CREATED!' is visible
        Click 'Continue' button
        Verify that 'Logged in as username' is visible


Test Case 2: Login User with CORRECT email and password
            [Tags]      Smoke
            [Documentation]     Validate login functionality using CORRECT email and password
            Verify page and Signup / Sign in
            Login to your account with correct credentials
            Verify that 'Logged in as username' is visible

Test Case 3: Login User with INCORRECT email and password
            [Tags]      smoke
            [Documentation]     Validate login functionality using INCORRECT email and password
            Verify page and Signup / Sign in
            Login to your account with incorrect credentials
            Verify error message

Test Case 4: LOGOUT already Logged in User
            [Tags]      smoke
            [Documentation]     Validate LOGOUT functionality for
            Verify page and Signup / Sign in
            Login to your account with correct credentials
            Verify that 'Logged in as username' is visible
            Click 'Logout' button
            Verify that user is navigated to login page

Test Case 5: Register User with existing email
            [Tags]      smoke
            [Documentation]     Validate EXISTING email id and error message
            Verify page and Signup / Sign in
            Enter existing name and email address
            Verify that user is navigated to existing email message

Test Case 6: Contact Us Form - Details, verify sucess message
            [Tags]      contact
            [Documentation]     Validate contact us form functionality by entering details
            Verify page and Signup / Sign in
            Login to your account with correct credentials
            Verify that 'Logged in as username' is visible
            Click on 'Contact Us' button and Verify GET IN TOUCH Message
            Enter name, email, subject and message, upload File and submit
            Verify success message 'Success! Your details have been submitted successfully.' is visible
            Click 'Home' button and verify that landed to home page successfully

Test Case 7: Verify Test Cases Page
            [Tags]      TestCases
            [Documentation]     Validate Test Case page
            Verify page and Signup / Sign in
            Login to your account with correct credentials
            Verify that 'Logged in as username' is visible
            Click on 'Test Cases' button and Verify




