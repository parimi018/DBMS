DECLARE
N NUMBER:=&N;
BEGIN
FOR I IN 0..20 LOOP
DBMS_OUTPUT.PUT_LINE(N||'*'||I||'='||(N*I));
END LOOP;
END;

/