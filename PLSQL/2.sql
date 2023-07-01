declare
n number:=&n;
m number:=n;
s number:'';
r number:=0;
begin
while n>0 loop
r:=n%10;
s:=s*10+r;
n:=n/10
end loop;
if m==s then
dbms_output.put_line(m||'is a Palindrome');
else
dbms_output.put_line(m||'is not a Palindrome');
end;
