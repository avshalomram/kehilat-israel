USE kehila;

INSERT INTO
    users (
        user_id,
        username,
        first_name,
        last_name,
        pass,
        email,
        phone,
        address,
        city,
        state,
        zip
    )
VALUES
    (
        1000,
        'user1',
        'John',
        'Doe',
        'password1',
        'john.doe@example.com',
        '1234567890',
        '123 Main St',
        'City1',
        'State1',
        '12345'
    ),
    (
        1001,
        'user2',
        'Jane',
        'Smith',
        'password2',
        'jane.smith@example.com',
        '0987654321',
        '456 Elm St',
        'City2',
        'State2',
        '54321'
    ),
    (
        1002,
        'user3',
        'Michael',
        'Johnson',
        'password3',
        'michael.johnson@example.com',
        '9876543210',
        '789 Oak St',
        'City3',
        'State3',
        '67890'
    ),
    (
        1003,
        'user4',
        'Emily',
        'Brown',
        'password4',
        'emily.brown@example.com',
        '0123456789',
        '321 Pine St',
        'City4',
        'State4',
        '09876'
    ),
    (
        1004,
        'user5',
        'David',
        'Taylor',
        'password5',
        'david.taylor@example.com',
        '9876543210',
        '654 Maple St',
        'City5',
        'State5',
        '54321'
    ),
    (
        1005,
        'user6',
        'Olivia',
        'Miller',
        'password6',
        'olivia.miller@example.com',
        '0123456789',
        '987 Cedar St',
        'City6',
        'State6',
        '67890'
    ),
    (
        1006,
        'user7',
        'James',
        'Anderson',
        'password7',
        'james.anderson@example.com',
        '1234567890',
        '654 Birch St',
        'City7',
        'State7',
        '12345'
    ),
    (
        1007,
        'user8',
        'Sophia',
        'Wilson',
        'password8',
        'sophia.wilson@example.com',
        '0987654321',
        '321 Oak St',
        'City8',
        'State8',
        '54321'
    ),
    (
        1008,
        'user9',
        'Benjamin',
        'Martinez',
        'password9',
        'benjamin.martinez@example.com',
        '9876543210',
        '789 Elm St',
        'City9',
        'State9',
        '67890'
    ),
    (
        1009,
        'user10',
        'Ava',
        'Harris',
        'password10',
        'ava.harris@example.com',
        '0123456789',
        '123 Pine St',
        'City10',
        'State10',
        '09876'
    );

INSERT INTO
    messages (user_id, message, date, likes, category)
VALUES
    (
        1000,
        "Welcome to the community!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Welcome"
    ),
    (
        1000,
        "Check out our latest events!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Events"
    ),
    (
        1000,
        "Join us for a special gathering!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Gatherings"
    ),
    (
        1001,
        "Exciting news for our members!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "News"
    ),
    (
        1001,
        "Don't miss out on this opportunity!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Opportunities"
    ),
    (
        1001,
        "Discover new ways to get involved!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Involvement"
    ),
    (
        1002,
        "Let's celebrate together!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Celebrations"
    ),
    (
        1002,
        "Share your thoughts and ideas!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Ideas"
    ),
    (
        1002,
        "Join us for a meaningful discussion!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Discussions"
    ),
    (
        1003,
        "Important announcement for all!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Announcements"
    ),
    (
        1003,
        "Let's make a positive impact!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Impact"
    ),
    (
        1003,
        "Together, we can achieve great things!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Achievements"
    ),
    (
        1004,
        "Discover the beauty of our traditions!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Traditions"
    ),
    (
        1004,
        "Learn from our inspiring leaders!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Leadership"
    ),
    (
        1004,
        "Experience the warmth of our community!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Community"
    ),
    (
        1005,
        "Explore new horizons with us!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Exploration"
    ),
    (
        1005,
        "Connect with like-minded individuals!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Connections"
    ),
    (
        1005,
        "Let's embark on a journey of growth!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Growth"
    ),
    (
        1006,
        "Join us for a memorable event!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Events"
    ),
    (
        1006,
        "Experience the joy of togetherness!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Togetherness"
    ),
    (
        1006,
        "Create lasting memories with us!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY),
        0,
        "Memories"
    );

INSERT INTO
    comments (message_id, user_id, comment, date)
VALUES
    (
        1,
        1007,
        "Great to be here!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        1,
        1008,
        "Looking forward to the events!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        1,
        1009,
        "Welcome to the community!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        2,
        1007,
        "Excited to see what's coming up!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        2,
        1008,
        "Count me in!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        2,
        1009,
        "Looking forward to attending!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        3,
        1007,
        "Sounds interesting!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        3,
        1008,
        "Can't wait to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        3,
        1009,
        "I'm excited for this!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    -- Repeat the above pattern for the remaining 
    -- 18 comments in the comments table
    (
        4,
        1007,
        "Great news!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        4,
        1008,
        "Looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        4,
        1009,
        "Excited to hear more!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        5,
        1007,
        "Sounds like a great opportunity!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        5,
        1008,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        5,
        1009,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        6,
        1007,
        "I'm excited to get involved!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        6,
        1008,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        6,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        7,
        1007,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        7,
        1008,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        7,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        8,
        1007,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        8,
        1008,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        8,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        9,
        1007,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        9,
        1008,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        9,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        10,
        1007,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        10,
        1008,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        10,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        11,
        1007,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        11,
        1008,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        11,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        12,
        1007,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        12,
        1008,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        12,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        13,
        1007,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        13,
        1008,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        13,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        14,
        1007,
        "Sounds like a great opportunity!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        14,
        1008,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        14,
        1009,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        15,
        1007,
        "I'm excited to get involved!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        15,
        1008,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        15,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        16,
        1007,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        16,
        1008,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        16,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        17,
        1007,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        17,
        1008,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        17,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        18,
        1007,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        18,
        1008,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        18,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        19,
        1007,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        19,
        1008,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        19,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        20,
        1007,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        20,
        1008,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        20,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        21,
        1007,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        21,
        1008,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        21,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        22,
        1007,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        22,
        1008,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        22,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        23,
        1007,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        23,
        1008,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        23,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        24,
        1007,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        24,
        1008,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        24,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        25,
        1007,
        "I'm excited to join!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        25,
        1008,
        "I'm looking forward to it!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    ),
    (
        25,
        1009,
        "I'm interested!",
        DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)
    );


    -- Insert 10 rows into the deductions table
    INSERT INTO deductions (deduction_id, user_id, date, name)
    VALUES
        (1, 1007, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY), "Deduction 1"),
        (2, 1008, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY), "Deduction 2"),
        (3, 1009, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY), "Deduction 3"),
        (4, 1010, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY), "Deduction 4"),
        (5, 1011, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY), "Deduction 5"),
        (6, 1012, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY), "Deduction 6"),
        (7, 1013, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY), "Deduction 7"),
        (8, 1014, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY), "Deduction 8"),
        (9, 1015, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY), "Deduction 9"),
        (10, 1016, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY), "Deduction 10");

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
