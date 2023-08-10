CREATE PROCEDURE insert_mechanic(INTEGER,VARCHAR,VARCHAR)
LANGUAGE 'plpgsql'
AS $$

BEGIN 

INSERT INTO public.mechanic(mechanic_id, first_name,last_name)VALUES($1,$2,$3);
COMMIT;

END;
$$;

CALL insert_mechanic(001,'John','Anderson');
CALL insert_mechanic(002,'Jim','Hamilton');
SELECT * FROM public.mechanic



CREATE PROCEDURE insert_part(INTEGER,INTEGER,NUMERIC(8,2))
LANGUAGE 'plpgsql'
AS $$

BEGIN 

INSERT INTO public.parts(part_id, service_ticket_id,price)VALUES($1,$2,$3);
COMMIT;

END;
$$;

CALL insert_part(11,0101,20.99);
CALL insert_part(12,0101,20.99);
SELECT * FROM public.parts