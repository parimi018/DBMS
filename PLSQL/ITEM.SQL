DECLARE
	N NUMBER:=&N;
	S VARCHAR(100);
BEGIN
	EX_OF_P(N,S);
	DBMS_OUTPUT.PUT_LINE(S);
END;
	