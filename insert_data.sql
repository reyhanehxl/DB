insert into Person(name, nationalID) values
                                         ('Reyhane amanollahi', 1123456788),
                                         ('zeinab shirafkan', 1237645567),
                                         ('mahak alaei', 1298794658),
                                         ('dr.ghatie', 1234878798);
insert into  Student(STUDENTID, PERSONID, MAJOR) VALUES
                                                     (1001, 1, 'Mathematics'),
                                                     (1002, 2, 'Mathematics'),
                                                     (1003, 3, 'CS');
insert into  Teacher(TEACHERID, PERSONID, DEPARTMENT, ACADEMICRANK) values
                                                                        (2001, 3, 'CS', 'Assistent professor'),
                                                                        (2002, 4, 'CS', 'Professor');
insert into Dish(name) values
                           ('ghorme sabzi'),
                           ('gheyme'),
                           ('hashtpa');
insert into Daily_menu(DISHID, MENUDATE, PRICE) values
                                                    (1, '2025-05-21', 15000),
                                                    (2, '2025-05-21', 10000),
                                                    (3, '2025-05-22', 30000);
insert into Order_table(personID, menuID, quantity) values
                                                                 (1,2,1),
                                                                 (2, 3, 1),
                                                                 (3, 1, 1),
                                                                 (4, 3, 1);