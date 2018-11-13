SET IDENTITY_INSERT [User] ON;

INSERT INTO [User] (ID, email, first_name, middle_name, last_name, birth_date, [password])
VALUES (1,'hanamontana@yahoo.com','Hana','Bill','Montana','5/5/1994','hanamontana5')

INSERT INTO Viewer (ID, working_place, working_place_type, working_place_description)
VALUES (1,'Dell EMC', 'IT Company', 'Offers services for other companies and individuals')

INSERT INTO [User] (ID, email, first_name, middle_name, last_name, birth_date, [password])
VALUES (2,'markrich111@gmail.com','Mark','Adam','Richard','11/7/1990','mark1234567')

INSERT INTO Viewer (ID, working_place, working_place_type, working_place_description)
VALUES (2,'Crave', 'Food Industry', 'Italian Restaurant')

INSERT INTO [User] (ID, email, first_name, middle_name, last_name, birth_date, [password])
VALUES (3,'lamaamr@gmail.com','Lama','Amr','Khaled','12/12/1990','mark1234567')

INSERT INTO Viewer (ID, working_place, working_place_type, working_place_description)
VALUES (3,'EL Ezaby', 'Pharmacy', 'Sells Cosmetics and Medicinal Drugs')

SET IDENTITY_INSERT Staff On;
SET IDENTITY_INSERT Reviewer On;
SET IDENTITY_INSERT Content_manager On;

INSERT INTO [User] (ID, email, first_name, middle_name, last_name, birth_date, [password])
VALUES (9,'jackadams@gmail.com','Jack','Adams','Peter','7/7/1980','jack4123')

INSERT INTO Staff (ID, hire_date, working_hours, payment_rate)
VALUES (9, '7/7/2005', 8, 50)

INSERT INTO Reviewer (ID)
VALUES (9)

INSERT INTO [User] (ID, email, first_name, middle_name, last_name, birth_date, [password])
VALUES (10,'Martin412@live.com','Martin','Goerge','Lenen','12/6/1985','martin443')

INSERT INTO Staff (ID, hire_date, working_hours, payment_rate)
VALUES (10, '12/6/2011', 10, 40)

INSERT INTO Reviewer (ID)
VALUES (10)

SET IDENTITY_INSERT Reviewer Off;

INSERT INTO [User] (ID, email, first_name, middle_name, last_name, birth_date, [password])
VALUES (11,'YoussefAlaa@yahoo.com','Youssef','Ahmed','Alaa','3/9/1970','yoyo412')

INSERT INTO Staff (ID, hire_date, working_hours, payment_rate)
VALUES (11, '1/1/2000', 8, 100)

INSERT INTO Content_manager (ID)
VALUES (11)

INSERT INTO [User] (ID, email, first_name, middle_name, last_name, birth_date, [password])
VALUES (12,'RanaAbdelhakim@yahoo.com','Rana','Mostafa','Abdelhakim','3/7/1965','roro745')

INSERT INTO Staff (ID, hire_date, working_hours, payment_rate)
VALUES (12, '1/1/1996', 8, 150)

INSERT INTO Content_manager (ID)
VALUES (12)

INSERT INTO [User] (ID, email, first_name, middle_name, last_name, birth_date, [password])
VALUES (13,'Frankalbert@yahoo.com','Frank','John','Albert','11/9/1963','faj11963')

INSERT INTO Staff (ID, hire_date, working_hours, payment_rate)
VALUES (13, '7/12/1996', 7, 200)

INSERT INTO Content_manager (ID)
VALUES (13)

SET IDENTITY_INSERT Content_manager Off;

INSERT INTO [User] (ID, email,first_name,middle_name,last_name,birth_date) VALUES (4, 'ghadawaly@gmail.com', 'Ghada','Ahmed','Waly')
INSERT INTO [User] (ID, email,first_name,middle_name,last_name,birth_date) VALUES (5, 'alaa.awad@gmail.com', 'Alaa','Ahmed','Awad')
INSERT INTO [User] (ID, email,first_name,middle_name,last_name,birth_date) VALUES (6, 'nazirtanbouli@outlook.com', 'Nazir','Lotfy','Tanbouli')
INSERT INTO [User] (ID, email,first_name,middle_name,last_name,birth_date) VALUES (7, 'hanyadel@live.com', 'Hany',null,'Adel')
INSERT INTO [User] (ID, email,first_name,middle_name,last_name,birth_date) VALUES (8, 'amireid@gmail.com', 'Amir',null,'Eid')


SET IDENTITY_INSERT Contributor ON
INSERT INTO Contributor (ID, portfolio_link,years_of_experience,specialization) VALUES (4, 'www.behance.net/ghadawali', 3,'Art')
INSERT INTO Contributor (ID, portfolio_link,years_of_experience,specialization) VALUES (5, 'alaa-awad.com/', 7,'Professor')
INSERT INTO Contributor (ID, portfolio_link,years_of_experience,specialization) VALUES (6, 'www.nazirtanbouli.com', 12,'Art')
INSERT INTO Contributor (ID, portfolio_link,years_of_experience,specialization) VALUES (7, 'en.wikipedia.org/wiki/Cairokee', 16,'Singer')
INSERT INTO Contributor (ID, portfolio_link,years_of_experience,specialization) VALUES (8, 'en.wikipedia.org/wiki/Hany_Adel', 12,'Singer')


INSERT INTO Category([type],[description]) VALUES ('Education','Education is the process of facilitating learning, or the acquisition of knowledge, skills, values, beliefs, and habits. Educational methods include storytelling, discussion, teaching, training, and directed research.' )
INSERT INTO Category([type],[description]) VALUES ('Art','Art is a diverse range of human activities in creating visual, auditory or performing artifacts.' )
INSERT INTO Category([type],[description]) VALUES ('Tourism','Tourism is a collection of activities, services and industries which deliver a travel experience comprising transportation, accommodation, eating and drinking establishments, retail shops, entertainment businesses and othe hospitality services provided for individuals or groups traveling away from home.' )

INSERT INTO Sub_Category(category_type,[name]) VALUES ('Education' , 'High School')
INSERT INTO Sub_Category(category_type,[name]) VALUES ('Art','Design')

SET IDENTITY_INSERT Existing_Request ON;

INSERT INTO Existing_Request (id, original_content_id, viewer_id)VALUES (1,1,2)
INSERT INTO Existing_Request (id, original_content_id, viewer_id)VALUES (2,2,1)SET IDENTITY_INSERT Existing_Request OFF;SET IDENTITY_INSERT New_Request ON;INSERT INTO New_Request(id, accept_status, specified, information, viewer_id, notif_obj_id, contributer_id)VALUES (1, 1, 'Ghada Waly', 'Stickers of the three pyramids', 1, 1, 4)INSERT INTO New_Request(id, accept_status, specified, information, viewer_id, notif_obj_id, contributer_id)VALUES (2, 1, 'Ghada Waly', '', 2, 2, 4)INSERT INTO New_Request(id, accept_status, specified, information, viewer_id, notif_obj_id, contributer_id)VALUES (3, 1, 'Alaa Awad', 'a website meant to empower parents by offering information on each of the city’s 1500 public schools. Each school profile contains information on admissions, test scores, culture, teaching styles, homework, and discipline.', 1, 3, 5)INSERT INTO Content(ID,link,uploaded_at,contributer_id,category_type,subcategory_name,[type])VALUES (1, '',, 5, 'Education', 'High School', 'eh ba2a')INSERT INTO New_Content(ID,new_request_id)VALUES (1, 3)INSERT INTO New_Request(id, accept_status, specified, information, viewer_id, notif_obj_id, contributer_id)VALUES (4, 1, 'Alaa Awad', 'Physics cirriculum developement', 2, 4, 5)INSERT INTO Content(ID,link,uploaded_at,contributer_id,category_type,subcategory_name,[type])VALUES (2, '',, 5, 'Education', 'High School', 'eh ba2a')INSERT INTO New_Content(ID,new_request_id)VALUES (2, 4)INSERT INTO New_Request(id, accept_status, specified, information, viewer_id, notif_obj_id, contributer_id)VALUES (5, 1, 'Alaa Awad', 'Website for extra cirricular courses', 3, 5, 5)INSERT INTO Content(ID,link,uploaded_at,contributer_id,category_type,subcategory_name,[type])VALUES (3, '',, 5, 'Art', 'High School', '')INSERT INTO New_Content(ID,new_request_id)VALUES (3, 5)INSERT INTO New_Request(id, accept_status, specified, information, viewer_id, notif_obj_id, contributer_id)VALUES (6, 1, 'Amir Eid', 'National Anthem', 1, 3, 7)INSERT INTO New_Request(id, accept_status, specified, information, viewer_id, notif_obj_id, contributer_id)VALUES (7, 1, 'Alaa Awad', 'Book', 1, 3, 5)INSERT INTO New_Request(id, accept_status, specified, information, viewer_id, notif_obj_id, contributer_id)VALUES (8, 1, 'Nazir Tanbouli', 'Logo', 1, 3, 6)INSERT INTO New_Request(id, accept_status, specified, information, viewer_id, notif_obj_id, contributer_id)VALUES (9, 0, 'Amir Eid', 'Song about love', 1, 6, 7)INSERT INTO New_Request(id, accept_status, specified, information, viewer_id, notif_obj_id, contributer_id)VALUES (10, 0, 'Hany Adel', 'Song about el taraggy', 1, 7, 8)INSERT INTO New_Request(id, accept_status, specified, information, viewer_id, notif_obj_id, contributer_id)VALUES (11, 0, 'Nazir Tanbouli', 'Logo for Israel', 1, 8, 6)INSERT INTO Content(ID,link,uploaded_at,contributer_id,category_type,subcategory_name,[type])VALUES (4, '', 4, 'Education', 'High School', '')INSERT INTO Original_Content(ID,[status], content_manager_id,reviewer_id,review_status,filter_status,rating) VALUES(4,1,11,9,1,1,4)INSERT INTO Content(ID,link,uploaded_at,contributer_id,category_type,subcategory_name,[type])VALUES (5, '', 4, 'Education', 'High School', '')INSERT INTO Original_Content(ID,[status], content_manager_id,reviewer_id,review_status,filter_status,rating) VALUES(5,1,12,10,1,1,5)INSERT INTO Content(ID,link,uploaded_at,contributer_id,category_type,subcategory_name,[type])VALUES (6, '', 4, 'Education', 'High School', '')INSERT INTO Original_Content(ID,[status], content_manager_id,reviewer_id,review_status,filter_status,rating) VALUES(6,1,13,9,1,1,3)INSERT INTO Notification_Object(ID)VALUES (1)INSERT INTO Notification_Object(ID)VALUES (2)INSERT INTO Notification_Object(ID)VALUES (3)INSERT INTO EVENT(id,[description],[location],city,[time],entertainer,notification_object_id,viewer_id) VALUES(1,'Self development courses','','', ,'',000,1)INSERT INTO EVENT(id,[description],[location],city,[time],entertainer,notification_object_id,viewer_id) VALUES(2,'','','', ,'',000,1)INSERT INTO EVENT(id,[description],[location],city,[time],entertainer,notification_object_id,viewer_id) VALUES(3,'','','', '','',000,1)INSERT INTO Advertisement VALUES(1,'Self Development courses','Cairo',1,1)