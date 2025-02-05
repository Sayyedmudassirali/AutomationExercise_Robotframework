*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# ********************* Test Data ***********************************
${RegCorrectName}=     Mudassir
${RegCorrectemail}=    sayyed.4@gmail.com
${ExistingName}=   Mudassir
${ExistingEmail}=  sayyed.i@gmail.com


#********************* Register Users web elements locators ****************
${WebsiteLogo}=     xpath://*[@class="logo pull-left"]
${SignupLogin}=   xpath://*[@class="fa fa-lock"]
${Signupform}=    xpath://*[@class="signup-form"]
${Name}=    xpath://input[@name="name"]
${EmailAddress}=    xpath://*[@id="form"]/div/div/div[3]/div/form/input[3]
${RegPassword}=     //*[@id="password"]
${SignupButton}=    xpath://button[contains(text(),'Signup')]
${EnterEmailAccount}=   xpath://b[contains(text(),'Enter Account Information')]
${Newsletter}=      xpath://*[@name="newsletter"]
${RecieveCheckboc}=  xpath://*[@name="optin"]
#*****Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
${RegFirstName}=       xpath://*[@id="first_name"]
${RegLastName}=        xpath://*[@id="last_name"]
${RegCompany}=     xpath://*[@id="company"]
${RegAddress1}=    xpath://*[@id="address1"]
${RegAddress2}=    xpath://*[@id="address2"]
${RegState}=    xpath://*[@id="state"]
${RegCity}=     xpath://*[@id="city"]
${RegZip}=      xpath://*[@id="zipcode"]
${MobileNumber}=    xpath://*[@id="mobile_number"]
${RegCreateAccount}=    xpath://button[contains(text(),'Create Account')]
#******************** ACCOUNT CREATED page ************************************
${AccountCreated}=      xpath://b[contains(text(),'Account Created!')]
${ContinueButton}=      xpath://a[contains(text(),'Continue')]
${LoginAs}=         partial link:Logged in as
${DeleteAccount}=   css:a[href='/delete_account']

#*******************Login Page******************************
${LoginEmail}=  name:email
${LoginPassword}=   name:password
${LoginButton}=     xpath://button[contains(text(),'Login')]
${Logout}=      css:a[href='/logout']

#*******************Contact us Form******************************
${Contactus_Menu}=   css:a[href='/contact_us']
${Contactus_Name}=   xpath://input[@name='name']
${Contactus_Email}=  xpath://input[@name='email']
${Contactus_Subject}=    xpath://input[@name='subject']
${Contactus_Message}=    xpath://textarea[@id='message']
${Contactus_UploadFile}=  xpath://input[@name='upload_file']
${Contactus_File_to_upload}=      D://Testing Documents/TestAutomation/AutomationExercise/TestData/Robot-Framework-Architecture.jpg
${Contactus_Submit}=    xpath://input[@name='submit']
${ContactusFileUpload_SuccessMessage}=  css:.status.alert.alert-success
${Contactus_ClickHome}=     xpath://span[normalize-space()='Home']

#***************Test Cases Option **********************
${TestCase_Menu}=   xpath://a[contains(text(),'Test Cases')]
${TestCase_Verify}=  xpath://b[normalize-space()='Test Cases']
