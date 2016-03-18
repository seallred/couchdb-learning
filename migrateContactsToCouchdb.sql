select * from cam.contact fetch first 10 rows only;

select '{' CONCAT
X'0A' CONCAT
'   "srcContactId" : ' CONCAT
RTRIM(contact_id) || ',' CONCAT
X'0A' CONCAT
'   "srcAppl" : "' CONCAT
RTRIM(src_appl) || '",' CONCAT
X'0A' CONCAT
'   "firstName" : "' CONCAT
RTRIM(first_name) || '",' CONCAT
X'0A' CONCAT
'   "lastName" : "' CONCAT
RTRIM(last_name) || '",' CONCAT
X'0A' CONCAT
'   "emailAddress" : "' CONCAT
RTRIM(email_address) || '",' CONCAT
X'0A' CONCAT
'   "ibmUid" : "' CONCAT
RTRIM(coalesce(ibm_uid,'')) || '"' CONCAT
X'0A' CONCAT
'},' 
from cam.contact fetch first 20 rows only;



