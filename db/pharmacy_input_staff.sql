USE batin_pharmacy;

INSERT INTO occupation (position)
VALUES
('admin'),
('staff warehouse'),
('staff frontline');

INSERT INTO staff(username, image, gender, email, password, occupation_id)
VALUES
('agung adipurwa', 'https://ik.imagekit.io/j8loglunjkf/Twibbon_PrvnXfWeW.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1652426894362',
'L',
'adiagung707@gmail.com',
'22032002',
1
),
(
'maysa putra',
'asfafdgdafgfdggagfgadf.jpg',
'L',
'maysaputrwa@gmail.com',
'23052002',
2
),
(
'prami apsari',
'https://ik.imagekit.io/j8loglunjkf/lena_yU9gSleAb.jpeg?ik-sdk-version=javascript-1.4.3&updatedAt=1647764841545',
'P',
'pramiapsari@gmail.com',
'19012002',
3
);