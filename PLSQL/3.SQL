declare
	id inventory.product_id%type := &id;
	q inventory.quantity%type;
	s varchar(15);
begin
	select quantity into q from inventory where product_id = id;
		if q > 0 then
			update inventory set quantity = quantity - 1 where product_id = id;
			s:='Purchased';
		else
			s:='Out OF Stock';
		end if;
		insert into purchase_record values(id,s,sysdate);
		dbms_output.put_line('Product Id '||id||' Purchase record Sucessfull.');
end;
/
