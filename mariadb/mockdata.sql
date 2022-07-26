-- Initial categories for the forums
INSERT INTO 
  categories (
    id, 
    topic, 
    topic_description, 
    amount_threads, 
    amount_posts, 
    created, 
    updated
  ) VALUES (
  0, 
  'Forum discussion', 
  'Discussions regarding the forums and support.', 
  2,
  2,
  current_timestamp(), 
  '0000-00-00 00:00:00'
);

INSERT INTO 
  categories (
    id,
    topic, 
    topic_description, 
    amount_threads, 
    amount_posts, 
    created,
    updated
  ) VALUES (
  1, 
  'Off Topic', 
  'Discussions for your non forum-related discussions.', 
  1,
  1,
  current_timestamp(), 
  '0000-00-00 00:00:00'
);

INSERT INTO 
  categories (
    id,
    topic, 
    topic_description, 
    amount_threads, 
    amount_posts, 
    created,
    updated
  ) VALUES (
  2,
  'Archive', 
  'Old topics which are not needed anymore.',
  2,
  2,
  current_timestamp(), 
  '0000-00-00 00:00:00'
);

-- Test user with authorities --
INSERT INTO 
  users (
    id, 
    email, 
    username, 
    password, 
    `role`, 
    user_status, 
    created, 
    updated, 
    posts_amount, 
    lastloggedin, 
    version
  ) VALUES (
  1, 
  'testing@gmail.com', 
  'Symb234', 
  '$2a$12$6.s0W0cWp0PkpzqqViGSoe3nk3m38d87xXD0ku14keGM2MuEoxNri', 
  'USER', 
  'ACTIVE', 
  '2022-08-19', 
  current_timestamp(), 
  237,
  '2022-08-19 13:58:17.000',
  0
);

INSERT INTO 
 authorities (
  id, 
  email, 
  authority
) VALUES (
  0, 
  'testing@gmail.com', 
  'READ'
);

INSERT INTO 
  users (
    id, 
    email, 
    username, 
    password, 
    `role`, 
    user_status, 
    created, 
    updated, 
    posts_amount, 
    lastloggedin, 
    version
  ) VALUES (
  2, 
  'another@gmail.com', 
  'idkwhattoputhere', 
  '$2a$12$6.s0W0cWp0PkpzqqViGSoe3nk3m38d87xXD0ku14keGM2MuEoxNri', 
  'USER', 
  'ACTIVE', 
  '2021-03-1', 
  current_timestamp(), 
  59,
  '2022-08-19 13:58:17.000',
  0
);

INSERT INTO 
 authorities (
  id, 
  email, 
  authority
) VALUES (
  1, 
  'another@gmail.com', 
  'READ'
);

---- Threads ----
INSERT INTO forum.threads (
  id,
  category_id,
  user_id, 
  subject,
  content,
  amount_posts, 
  created,
  updated
) VALUES (
  3,
  0,
  1,
  'General Plant Biology',
  'Plant biology is a key area of science that bears major weight in the mankind''s ongoing and future efforts to combat the consequences of global warming, climate change, pollution, and population growth. An in-depth understanding of plant physiology is paramount to our ability to optimize current agricultural practices, to develop new crop varieties, or to implement biotechnological innovations in agriculture. The next-generation cultivars would have to withstand environmental contamination and a wider range of growth temperatures, soil nutrients and moisture levels and effectively deal with growing pathogen pressures to continue to yield well in even suboptimal conditions.', 
  2,
  '2022-08-19 06:30:45', 
  '2022-08-19 14:05:20.000'
);

INSERT INTO forum.threads (
  id, 
  category_id, 
  user_id, 
  subject, 
  content, 
  amount_posts, 
  created, 
  updated
) VALUES (
  4,
  2,
  1, 
  'This is an archived thread',
  'Yeah, this is an old archived thread.', 
  1,
  '2022-08-19 20:22:11',
  '2022-08-19 11:14:07.000'
);

INSERT INTO forum.threads (
  id, 
  category_id, user_id, 
  subject, 
  content, 
  amount_posts, 
  created, 
  updated
) VALUES (
  5,
  1,
  1,
  'The Physiology Of Growth In Apple Fruits', 
  'Growth of fruits is a problem, not only of considerable plant physiological interest but also of outstanding economic importance. In apples, for instance, fruit size has for a long time been regarded as an important factor in determining the keeping quality of apples in storage. Since keeping quality is related to the physiology of the fruit, it is of considerable interest to investigate the anatomical and histological causes of differences in fruit size and to relate these to physiological phenomena, both during the development of the fi-uit and during its senescent life after removal from the tree. The work described l. in this paper was undertaken to study the relationship between cell size and fruit size, and in a second paper this will be related to physiological and biochemical changes.', 
  1,
  '2022-08-19 15:12:34',
  '2022-08-19 14:13:18.000'
);

INSERT INTO forum.threads (
  id, 
  category_id, 
  user_id, 
  subject, 
  content, 
  amount_posts, 
  created, 
  updated
) VALUES (
  6, 
  2, 
  1, 
  'This is something', 
  'something...', 
  0,
  '2022-08-19 10:30:02', 
  '2022-08-19 14:14:30.000'
);

INSERT INTO forum.threads (
  id, 
  category_id, 
  user_id, 
  subject, 
  content, 
  amount_posts, 
  created, 
  updated
) VALUES (
  7,
  0,
  1,
  'More of something',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget tortor scelerisque, laoreet lectus ac, tempor ipsum. Nam malesuada porta neque sit amet laoreet. Nullam vitae lacus nec tellus dictum dictum. Ut congue lectus et ex elementum blandit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed pellentesque dui augue, nec congue velit aliquet vel. Nulla sed consequat lorem. Quisque dui nunc, ullamcorper vel rhoncus non, sollicitudin lacinia eros. Maecenas pharetra mollis nibh, eget aliquam tortor facilisis at. Aenean in dignissim ante. Donec accumsan ante at tempor condimentum. Fusce quis ex lacinia, accumsan massa id, tincidunt sem. Pellentesque id dolor id diam posuere pellentesque a facilisis odio. Nunc pharetra ex at lectus vulputate, fermentum vestibulum mauris mollis. Nullam sagittis vitae purus vel ultrices.',
  1,
  '2022-08-19 07:47:19',
  '2022-08-19 14:15:27.000'
);

-- Replies are the posts in a thread
INSERT INTO forum.replies (
  id,
  thread_id,
  user_id,
  content,
  created,
  updated
) VALUES (
  0,
  3,
  1,
  'Someone I know recently combined Maple Syrup & buttered Popcorn thinking it would taste like caramel popcorn. It didn\'t and they don\'t recommend anyone else do it either.',
  '2022-08-22 02:55:05',
  current_timestamp()
);

-- Replies are the posts in a thread
INSERT INTO forum.replies (
  id,
  thread_id,
  user_id,
  content,
  created,
  updated
) VALUES (
  1,
  3,
  2,
  'There\'s probably enough glass in my cupboard to build an undersea aquarium.',
  '2022-08-22 13:08:22',
  current_timestamp()
);

INSERT INTO forum.replies (
  id,
  thread_id,
  user_id,
  content, 
  created, 
  updated
) VALUES (
  2,
  7,
  1,
  'My dentist tells me that chewing bricks is very bad for your teeth.',
  '2022-08-22 00:00:00.000',
  '2022-08-22 11:49:46.000'
);

INSERT INTO forum.replies (
  id,
  thread_id,
  user_id,
  content,
  created,
  updated
) VALUES (
  3,
  5,
  1,
  'Choosing to do nothing is still a choice, after all.',
  '2022-08-22 00:00:00.000', 
  '2022-08-22 11:52:57.000'
);

INSERT INTO forum.replies (
  id,
  thread_id,
  user_id,
  content,
  created,
  updated
) VALUES (
  6,
  4,
  1,
  'I\'m working on a sweet potato farm.', 
  '2022-08-22 00:00:00.000',
  '2022-08-22 11:55:40.000'
);

