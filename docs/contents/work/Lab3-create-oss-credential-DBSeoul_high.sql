--Please fill in your OCI Object Store username and auth token below
set define off
begin
  DBMS_CLOUD.create_credential(
    credential_name => 'OBJ_STORE_CRED',
    username => 'ossadmin',
    password => 'n>kL9fi<-gZpGArNw(B2'
  );
end;
/
set define on

SELECT credential_name, username, comments FROM all_credentials;

BEGIN
  DBMS_CLOUD.DROP_CREDENTIAL('OBJ_STORE_CRED');
END;


