INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('KVA', 'EersteCompagnonsweg 15, Bontebok', 0.8, TRUE);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Opencii', 'Zernikepark 12, Groningen', 13.78, FALSE);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Stichting DBG', 'Gedempte Molenwijk 22b, Heerenveen', 1.4 , TRUE);

-- INSERT INTO conversations (user_id, employer_id, message)
-- VALUES (1, 2, 'I set up the pg Pool correctly, and it works just fine if I want to connect it to my AWS postgres server (with the correct endpoint and such, of course), but when I try to get it to connect to the postgres server I have set up on the same machine, I get the following error');