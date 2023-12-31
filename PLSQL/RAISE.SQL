CREATE OR REPLACE PROCEDURE RAISE_SALARY(EN NUMBER) AS
	S NUMBER;
	VAL NUMBER;
	EXE EXCEPTION;
	BEGIN
		VAL:=INCR(EN);
		SELECT SAL INTO S FROM EMP1 WHERE EMPNO=EN;
		IF S IS NULL THEN 
			RAISE EXE;
		ELSE
			UPDATE EMP1 SET SAL=VAL WHERE EMPNO=EN;
		END IF;
		EXCEPTION
			WHEN NO_DATA_FOUND THEN
				DBMS_OUTPUT.PUT_LINE('GIVEN EMPLOYEE NUMBER NOT FOUND');
			WHEN EXE THEN
				DBMS_OUTPUT.PUT_LINE('SALARY IS NULL');
	END;
		