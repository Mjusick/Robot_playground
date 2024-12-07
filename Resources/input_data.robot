*** Variables ***
&{ADMIN_CREDENTIALS}    email=gary.muffin@example.com    password=secret123!
&{NEW_CUSTOMER}     email=john.doe@example.com    first_name=John    last_name=Doe    city=Lublin    state=CA    gender=male
${BROWSER}    chrome
${INVALID_CREDENTIALS_CSV_FILE}    Resources/Users.csv