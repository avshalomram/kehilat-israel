USE kehilat_israel;

INSERT INTO users (user_id, username, first_name, last_name, pass, email, phone, address, city, state, zip, role)
VALUES (1000, 'david', 'יוחנן', 'דויד', 'password1', 'john.doe@example.com', '1234567890', '123 Main St', 'City1', 'State1', '12345', "מנהל"),
       (1001, 'yael', 'יעל', 'כהן', 'password2', 'jane.smith@example.com', '0987654321', '456 Elm St', 'City2', 'State2', '54321', "חבר קהילה"),
       (1002, 'michael', 'מיכאל', 'כהן', 'password3', 'michael.johnson@example.com', '9876543210', '789 Oak St', 'City3', 'State3', '67890', "חבר קהילה"),
       (1003, 'levy', 'אמילי', 'לוי', 'password4', 'emily.brown@example.com', '0123456789', '321 Pine St', 'City4', 'State4', '09876', "חבר קהילה"),
       (1004, 'dudi', 'דוד', 'כהן', 'password5', 'david.taylor@example.com', '8765432109', '654 Maple St', 'City5', 'State5', '54321', "חבר קהילה"),
       (1005, 'oliv', 'אוליביה', 'כהן', 'password6', 'olivia.miller@example.com', '7654321098', '987 Cedar St', 'City6', 'State6', '67890', "חבר קהילה"),
       (1006, 'yaakov', 'יעקב', 'כהן', 'password7', 'james.anderson@example.com', '6543210987', '654 Birch St', 'City7', 'State7', '12345', "חבר קהילה"),
       (1007, 'shara', 'שרה', 'כהן', 'password8', 'sophia.wilson@example.com', '5432109876', '321 Oak St', 'City8', 'State8', '54321', "חבר קהילה"),
       (1008, 'ben', 'בנימין', 'כהן', 'password9', 'benjamin.martinez@example.com', '4321098765', '789 Elm St', 'City9', 'State9', '67890', "חבר קהילה"),
       (1009, 'avi', 'אביגיל', 'כהן', 'password10', 'ava.harris@example.com', '3210987654', '123 Pine St', 'City10', 'State10', '09876', "חבר קהילה");

INSERT INTO posts (user_id, title, content, date, likes, category)
VALUES
    (1000, "שלום לכולם!", "אני שמח להצטרף לקהילה החדשה.", '2022-01-01', 10, "ברכות"),
    (1001, "בעיה בפתרון", "היי, יש למישהו מושג איך לפתור את הבעיה הזו?", '2022-02-02', 20, "תגובות"),
    (1002, "מחפש עזרה בפרויקט", "אני מחפש מישהו שיכול לעזור לי עם פרויקט React.", '2022-03-03', 30, "יומנים"),
    (1003, "מדריך על CSS", "מישהו יודע איפה אני יכול למצוא מדריך טוב על CSS?", '2022-04-04', 40, "בקשות"),
    (1004, "המלצה על ספר JavaScript", "אני ממליץ על ספר המתקדם של JavaScript, מדריך מעולה!", '2022-05-05', 50, "המלצות"),
    (1005, "הכנס הקרוב", "היי, אשמח לשמוע מהכולם על הכנס הקרוב.", '2022-06-06', 60, "אירועים"),
    (1006, "המלצה על ספר Node.js", "אני מחפש מישהו שיכול לתת המלצה על ספר טוב בנושא Node.js.", '2022-07-07', 70, "המלצות"),
    (1007, "התקנת MongoDB על Windows", "מישהו יודע איך אני יכול להתקין MongoDB על Windows?", '2022-08-08', 80, "בקשות"),
    (1008, "פיתוח אפליקציה נייטיב ב-React Native", "אני מחפש מישהו שיכול לעזור לי לפתח אפליקציה נייטיב ב-React Native.", '2022-09-09', 90, "פרויקטים"),
    (1009, "כלי לניתוח נתונים", "היי, יש למישהו המלצה על כלי לניתוח נתונים?", '2022-10-10', 100, "המלצות"),
    (1000, "שאלה על HTML", "איך אני יכול ליצור טבלה ב-HTML?", '2022-11-11', 110, "שאלות"),
    (1001, "מדריך לפיתוח אפליקציות מובייל", "מישהו יודע מדריך טוב לפיתוח אפליקציות מובייל?", '2022-12-12', 120, "מדריכים"),
    (1002, "המלצה על ספר Python", "אני מחפש מישהו שיכול לתת המלצה על ספר טוב בנושא Python.", '2023-01-01', 130, "המלצות"),
    (1003, "כיצד להתחיל עם Git", "מישהו יכול להמליץ על מדריך להתחיל עם Git?", '2023-02-02', 140, "המלצות"),
    (1004, "פיתוח אפליקציות ווב ב-React", "אני מחפש מישהו שיכול לעזור לי לפתח אפליקציות ווב ב-React.", '2023-03-03', 150, "פרוייקטים"),
    (1005, "המלצה על ספר CSS", "אני מחפש מישהו שיכול לתת המלצה על ספר טוב בנושא CSS.", '2023-04-04', 160, "המלצות"),
    (1006, "כיצד לכתוב קוד נקי", "מישהו יכול לתת טיפים על כתיבת קוד נקי ומנומק?", '2023-05-05', 170, "טיפים"),
    (1007, "פיתוח אפליקציות נייטיב ב-Swift", "אני מחפש מישהו שיכול לעזור לי לפתח אפליקציות נייטיב ב-Swift.", '2023-06-06', 180, "פרויקטים"),
    (1008, "המלצה על ספר SQL", "אני מחפש מישהו שיכול לתת המלצה על ספר טוב בנושא SQL.", '2023-07-07', 190, "המלצות"),
    (1009, "כיצד לשדרג ל-React 18", "מישהו יכול להמליץ על מדריך לשדרג לגרסה 18 של React?", '2023-08-08', 200, "המלצות"),
    (1000, "פיתוח אפליקציות נייטיב ב-Kotlin", "אני מחפש מישהו שיכול לעזור לי לפתח אפליקציות נייטיב ב-Kotlin.", '2023-09-09', 210, "פרויקטים");


INSERT INTO comments (post_id, user_id, content, date)
VALUES
    (1, 1000, "נהדר להיות כאן!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (1, 1000, "מצפה לאירועים!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (1, 1009, "ברוכים הבאים לקהילה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (2, 1007, "מתרגש לראות מה עתיד להגיע!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (2, 1008, "ספרו עליי!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (2, 1009, "מצפה להשתתף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (3, 1007, "נשמע מעניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (3, 1008, "אני לא יכול לחכות להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (3, 1009, "אני מתרגש לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (4, 1007, "חדשות טובות!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (4, 1008, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (4, 1009, "מתרגש לשמוע עוד!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (5, 1007, "נשמע כמו הזדמנות נהדרת!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (5, 1008, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (5, 1009, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (6, 1007, "מתרגש להיות מעורב!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (6, 1008, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (6, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (7, 1007, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (7, 1008, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (7, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (8, 1007, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (8, 1008, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (8, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (9, 1007, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (9, 1008, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (9, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (10, 1007, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (10, 1008, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (10, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (11, 1007, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (11, 1008, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (11, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (12, 1007, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (12, 1008, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (12, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (13, 1007, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (13, 1008, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (13, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (14, 1007, "נשמע כמו הזדמנות נהדרת!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (14, 1008, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (14, 1009, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (15, 1007, "מתרגש להיות מעורב!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (15, 1008, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (15, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (16, 1007, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (16, 1008, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (16, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (17, 1007, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (17, 1008, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (17, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (18, 1007, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (18, 1008, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (18, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (19, 1007, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (19, 1008, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (19, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (20, 1007, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (20, 1008, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (20, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (21, 1007, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (21, 1008, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (21, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (22, 1007, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (22, 1008, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (22, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (23, 1007, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (23, 1008, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (23, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (24, 1007, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (24, 1008, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (24, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (25, 1007, "מתרגש להצטרף!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (25, 1008, "מצפה לזה!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
    (25, 1009, "אני מעוניין!", DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY));

    -- Insert 10 rows into the dedication table
    INSERT INTO dedications (donation_id, user_id, date, name, type)
    VALUES
        (1, 1007, "2024-01-01", "אביב", "רפואה"),
        (2, 1008, "2024-01-10" , "נועה", "פרנס היום"),
        (3, 1009, "2024-01-02" , "יעל", "פרנס היום"),
        (4, 1010, "2024-01-03" , "איתן", "אזכרה"),
        (5, 1011, "2024-01-04" , "מיה", "רפואה"),
        (6, 1012, "2024-01-05" , "אדם", "הצלחה"),
        (7, 1013, "2024-01-06", "שירה", "פרנס היום"),
        (8, 1014, "2024-01-07" , "אורי", "אזכרה"),
        (9, 1015, "2024-01-08" , "תמר", "רפואה"),
        (10, 1016, "2024-01-09" , "אילן", "הצלחה");

    -- Insert 10 rows into the donations table
    INSERT INTO donations (donation_id, user_id, amount, date)
    VALUES
        (1, 1007, 100, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
        (2, 1008, 200, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
        (3, 1009, 300, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
        (4, 1010, 400, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
        (5, 1011, 500, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
        (6, 1012, 600, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
        (7, 1013, 700, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
        (8, 1014, 800, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
        (9, 1015, 900, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)),
        (10, 1016, 1000, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY));
-- Insert 10 rows into the debts table
INSERT INTO debts (debt_id, user_id, debt)
VALUES
    (1, 1000, 1000),
    (2, 1001, 2000),
    (3, 1002, 3000),
    (4, 1003, 4000),
    (5, 1004, 5000),
    (6, 1005, 6000),
    (7, 1006, 7000),
    (8, 1007, 8000),
    (9, 1008, 9000),
    (10, 1009, 10000);

    INSERT INTO likes (user_id, post_id) VALUES
    (1000, 1),
    (1001, 1),
    (1002, 1),
    (1003, 1),
    (1004, 1),
    (1005, 1),
    (1006, 1),
    (1007, 1),
    (1008, 1),
    (1009, 1),
    (1000, 2),
    (1001, 2),
    (1002, 2),
    (1003, 2),
    (1004, 2),
    (1005, 2),
    (1006, 2),
    (1007, 2),
    (1008, 2),
    (1009, 2),
    (1000, 3),
    (1001, 3),
    (1002, 3),
    (1003, 3),
    (1004, 3),
    (1005, 3),
    (1006, 3),
    (1007, 3),
    (1008, 3),
    (1009, 3),
    (1000, 4),
    (1001, 4),
    (1002, 4),
    (1003, 4),
    (1004, 4),
    (1005, 4),
    (1006, 4),
    (1007, 4),
    (1008, 4),
    (1009, 4),
    (1000, 5),
    (1001, 5),
    (1002, 5),
    (1003, 5),
    (1004, 5),
    (1005, 5),
    (1006, 5),
    (1007, 5),
    (1008, 5),
    (1009, 5),
    (1000, 6),
    (1001, 6),
    (1002, 6),
    (1003, 6),
    (1004, 6),
    (1005, 6),
    (1006, 6),
    (1007, 6),
    (1008, 6),
    (1009, 6),
    (1000, 7),
    (1001, 7),
    (100, 8);

   

    INSERT INTO prayersTimes (prayer_name, fixed, category, serial)
    VALUES
        ("שחרית", "07:00", "weekday",1),
        ("שחרית (יום שישי)", "07:00", "shabat",5),
        ("שחרית של שבת", "07:30", "shabat",6);

    INSERT INTO prayersTimes (prayer_name, dependency,minutes ,category,serial)
    VALUES
        ("מנחה", "sunset", -20, "weekday",2),
        ("ערבית", "sunset",30, "weekday",3),
        ("מנחה של שבת", "sunset", -50, "shabat",7),
        ("מנחה של ערב שבת", "sunset", -30, "shabat",4),
        ("ערבית של מוצאי שבת", "sunset",40, "shabat",8);
        

    
	