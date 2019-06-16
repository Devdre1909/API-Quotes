-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2019 at 11:45 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_quotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `url` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `url`) VALUES
(1, 'Abraham Lincoln', ''),
(2, 'Bette Davis', ''),
(3, 'Chuck Palahniuk', ''),
(4, 'Helen Keller', ''),
(5, 'Jean Paul', ''),
(6, 'Stephen King', ''),
(7, 'Cali Rae Turner', ''),
(8, 'John Dewey', ''),
(9, 'Garrison Keillor', ''),
(10, 'Dr. Seuss', ''),
(11, 'William James', ''),
(12, 'Isadora James', ''),
(13, 'Charles M. Schulz', ''),
(14, 'Alice Walker', ''),
(15, 'Pam Brown', ''),
(16, 'Anonymous', ''),
(17, 'Walt Whitman', ''),
(18, 'Rudyard Kipling', ''),
(19, 'Groucho Marx', ''),
(20, 'Jacqueline Kennedy Onassis', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Adversity & Hardship Quotes', 'Like failures and mistakes, adversity and hardship are the two other great teachers of morality in life. If you can stare at adversity and hardship in the face and refuse to cow down under their collective burden, then you can learn valuable lessons that will help you to lead your life. Anyone can tide over adversity and hardship only if they have hope, which is the only weapon to overcome deadly obstacles. When your hope triumphs over adversity and hardship, you will come out of the ordeal as a much wiser man. To strengthen yourself to fight against adversity and hardship, check out these famous adversity and hardship quotations and sayings.'),
(2, 'Body Language & Actions Quotes', 'You should match your words with action and action with proper body language. Your body language subconsciously conveys what you have in mind and demonstrates your willingness to take action. When words turn to action, it is the body language that makes the other aware of your intention. For example, if you are thinking of aggression, then your posture will become tough. Seeing this aggressive posture, others may think that your action will turn to violence. There is definitely a link between your action and body language. Read the body language and action quotes to know how these two are linked.'),
(3, 'Computers & Technology Quotes', 'Computers and technology go hand in hand. Earlier it was advanced technology that built computers but nowadays both have become interdependent. Without technology, computers cannot be designed and without the help of computers, more advanced technology cannot be created and researched. The advancement in technology now is directly due to the advancement in the programming of the computers as such computers helps the scientists to test how feasible the technology would be. The computers and technology quotes will help you to understand the interrelation between these two.'),
(4, 'Fitness & Exercise Quotes', 'Fitness comes first and if you are looking to lead a long and healthy life, it better come first. Why is fitness and exercising as important as it is in the life of almost every other person? Well, fitness enjoys the importance that it does because apart from helping you to look really good and fit, it can also help you get a lot healthier than you are. If you have been leading a life devoid of fitness and exercises, its time for you to move on to greener pastures. Find yourself a refreshing dosage of quotations and sayings on fitness and exercises.'),
(5, 'History & Culture Quotes', 'The culture and history of the land plays a vital role in exploring the tangible roots of the people and their enriching values. The general history of the territory displays the proud cultural values of the country and its importance in the present world. From pre-historic and ancient people to the present modern populace, everyones life has been strongly influenced by the artistic blend of history and culture of the land. Read these famous history & culture quotations & sayings to feel its influence on your lives.'),
(6, 'Human Resource Quotes', 'Human resource, the most important part of any sector, provides significant support and advice to the whole management. With a backup of well-versed and experienced human resource individuals, an enterprise can expect to strive for bigger goals through its able manpower. Whether its hiring, training, management or planning division of the company, a supportive human resource department is necessary for the survival and accomplishment of the organization. Here are some of the popular human resource quotes expressing its strategic importance in proactive analysis of the organization and its people.'),
(7, 'Life & Philosophy Quotes', 'Lifes philosophy differs from individual to individual. While some people believe in \"Live life, king size!\" and \"Life is fun\", others believe that there is no life on other planet. But, it isn?t easy on this one either! Every life is made up of several little ideas, events and people, which when assembled together, fit the jigsaw puzzle. And it is these small events and ideas that shape up our attitude towards life. To understand more about life and its philosophy, flip through the next section for famous quotes about life and philosophy!'),
(8, 'Motivational & Inspirational Quotes', 'What do you think will be inspiring enough for you to read? It could probably be something about leadership or success or following your dreams or personal growth or dealing with others or simply something to get you through every day. Motivational and inspirational quotes are required for each and every single person at some point. People get stressed and irritated owing to their work and complex lifestyles. For a calm and healthy living, read some of these famous quotations and sayings.'),
(9, 'Mutual Help Quotes', 'A person with values has morality in him. Now, it is very interesting to note the variations in each persons view about morality because there really are that many! Morality is basically having good principles, behaving in a certain manner and respecting the norms of the society you live in. It is a personal set of unwritten and unsaid rules that you abide by for your welfare and that of everyone around you! There is nothing really right and wrong about morality. Read some very moral and some not-so-ethical quotations in the next section!'),
(10, 'Nation & Nationality Quotes', 'While a nation represents an ethnic community bound by common language, culture, and ancestry; nationality is a membership of a nation or sovereign state. According to definition, nationality can be acquired by being born within the jurisdiction of a state, by inheriting it from parents, or by a process of naturalization. Wherever there is a nation, nationality is bound to be present. A list of famous nation and nationality quotes might just help you out to get a better idea of both.\r\nNegativity & Pessimism Quotes'),
(11, 'Power & Influence Quotes', 'Is there a difference between power and influence? Yes there is, power is the ultimate control of a body that covers several aspects such as behavior, social conduct and other important factors. But influence on the other hand is the reason or cause of an institute to act in a particular pattern. There are different issues that affect the influences of any group or body such as social, political, religion, scientific, legal and emotions to name a few. Read through the articles to know more about these intelligent power and influence quotations and sayings.'),
(12, 'Problems & Trouble Quotes', 'Keeping yourself updated with the quotes and sayings on politics and government; they are sure to come handy in future. These are the hot favorite topics in most gatherings. Current affairs are always fascinating and interesting. Not all quotes listed below are serious. There are a few that will leave you chuckling. Caricatures on political leaders and cartoons on the political parties lighten up the serious scenarios. Read the famous quotations and sayings to know more.');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `quote` text NOT NULL,
  `tags` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `tags`, `author_id`, `category_id`) VALUES
(1, 'Whenever I hear anyone arguing for slavery, I feel a strong impulse to see it tried on him personally.', 'Presidency, Slavery', 1, 10),
(2, 'Those who look for the bad in people will surely find it.', 'Moral, People', 1, 10),
(3, 'We can complain because rose bushes have thorns, or rejoice because thorn bushes have roses.', '', 1, 10),
(4, 'My Best Friend is a person who will give me a book I have not read.', 'Best Friend, Friend, Reading', 1, 10),
(5, 'Whatever you are, be a good one.', 'Moral, Good, Charater', 1, 10),
(6, 'Do I not destroy my enemies when I make them my friends?', 'Friends, Enemies', 1, 10),
(7, ' When you reach the end of your rope, tie a knot and hang on.', 'Advice, Deep', 1, 10),
(8, 'America will never be destroyed from the outside. If we falter and lose our freedoms, it will be because we destroyed ourselves.', 'Presidency, America', 1, 10),
(9, 'Folks are usually about as happy as they make their minds up to be.', 'People, Happy', 1, 10),
(10, 'Those who look for the bad in people will surely find it.', 'People, Bad', 1, 10),
(11, 'And in the end, it\'s not the years in your life that count. It\'s the life in your years.', 'Life, Deep', 1, 10),
(12, 'Common looking people are the best in the world: that is the reason the Lord makes so many of them.', 'Presidency', 1, 10),
(13, 'Whatever you are, be a good one.', 'People, Commom, God', 1, 10),
(14, 'I can see how it might be possible for a man to look down upon the earth and be an atheist, but I cannot conceive how a man could look up into the heavens and say there is no God.', 'Religion, God', 1, 10),
(15, 'The best way to destroy an enemy is to make him a friend.', 'Friends, Enemies', 1, 10),
(16, 'Nearly all men can stand adversity, but if you want to test a man\'s character, give him powers.', 'Power, Adversity, People', 1, 10),
(17, 'When I do good, I feel good; when I do bad, I feel bad. That\'s my religion.', 'Religion, Good, Bad', 1, 10),
(18, 'The better part of one\'s life consists of his friendships.', 'Friendships', 1, 10),
(19, 'All I am, or can be, I owe to my angel mother.', 'Mother', 1, 10),
(20, 'Those who deny freedom to others deserve it not for themselves.', 'Freedom, Selfish', 1, 10),
(21, 'The key to life is accepting challenges. Once someone stops doing this, he\'s dead.', 'Life, Death, Challenges, Adversary', 2, 1),
(22, 'Every woman is just a different kind of problem.', 'Female, Women, Problem, Adversary', 3, 1),
(23, 'I just don\'t want to die without a few scars.	', 'Adversary, Scars, Death', 3, 1),
(24, 'Your birth is a mistake you\'ll spend your whole life trying to correct.', 'Adversary, Birth, Mistakes', 3, 1),
(25, 'All the world is full of suffering. It is also full of overcoming.	', 'Adversary, Suffering, Overcoming, World', 4, 1),
(26, 'We could never learn to be brave and patient, if there were only joy in the world.	', 'Adversary, Joy, World, Brave, Patient', 4, 1),
(27, 'Your success and happiness lies in you. Resolve to keep happy, and your joy and you shall form an invincible host against difficulties.', 'Adversary, Success, Happiness, Joy, Difficult', 4, 1),
(28, 'Poverty is the only load which is the heavier the more loved ones there are to assist in bearing it.', 'Adversary, Poverty, Love', 5, 1),
(29, 'God is cruel. Sometimes he makes you live.', 'Adversary, God, Live', 6, 1),
(30, 'It\'s better to be good than evil, but one achieves goodness at a terrific cost.	', 'Adversary, Good, Evil', 1, 1),
(31, 'The best thing about having a sister was that I always had a friend.	', 'Appeciation, Sister, Friend', 7, 8),
(32, 'To find out what one is fitted to do, and to secure an opportunity to do it, is the key to happiness.', 'Appeciation, Happy, Happiness, Opportubity', 8, 8),
(33, 'Failure is instructive. The person who really thinks learns quite as much from his failures as from his successes.', 'Failures, Success', 8, 8),
(34, 'A book is a gift you can open again and again.', 'Book, Gift', 9, 8),
(35, 'Today was good. Today was fun. Tomorrow is another one.', 'Appeciation, Good, Fun, Today, Tomorrow', 10, 8),
(36, 'The deepest principle in human nature is the craving to be appreciated.', 'Appreciated, Humans', 11, 8),
(37, 'A sister is a gift to the heart, a friend to the spirit, a golden thread to the meaning of life.	', 'Frinds, Sister, Love, Heart', 12, 8),
(38, 'Big sisters are the crab grass in the lawn of life.', 'Sisters, Life', 13, 8),
(39, 'Is solace anywhere more comforting than in the arms of a sister.', 'Sister, Comfort', 14, 8),
(40, ' Sisters annoy, interfere, criticize. Indulge in monumental sulks, in huffs, in snide remarks. Borrow. Break. Monopolize the bathroom. Are always underfoot. But if catastrophe should strike, sisters are there. Defending you against all comers.', 'Sisters', 15, 8),
(41, 'The best thing about having a sister was that I always had a friend.	', 'Appeciation, Sister, Friend', 7, 8),
(42, 'To find out what one is fitted to do, and to secure an opportunity to do it, is the key to happiness.', 'Appeciation, Happy, Happiness, Opportubity', 8, 8),
(43, 'Failure is instructive. The person who really thinks learns quite as much from his failures as from his successes.', 'Failures, Success', 8, 8),
(44, 'A book is a gift you can open again and again.', 'Book, Gift', 9, 8),
(45, 'Today was good. Today was fun. Tomorrow is another one.', 'Appeciation, Good, Fun, Today, Tomorrow', 10, 8),
(46, 'The deepest principle in human nature is the craving to be appreciated.', 'Appreciated, Humans', 11, 8),
(47, 'A sister is a gift to the heart, a friend to the spirit, a golden thread to the meaning of life.	', 'Frinds, Sister, Love, Heart', 12, 8),
(48, 'Big sisters are the crab grass in the lawn of life.', 'Sisters, Life', 13, 8),
(49, 'Is solace anywhere more comforting than in the arms of a sister.', 'Sister, Comfort', 14, 8),
(50, ' Sisters annoy, interfere, criticize. Indulge in monumental sulks, in huffs, in snide remarks. Borrow. Break. Monopolize the bathroom. Are always underfoot. But if catastrophe should strike, sisters are there. Defending you against all comers.', 'Sisters', 15, 8),
(51, 'I sought my soul, but my soul I could not see. I sought my God, but my God eluded me. I sought my brother and I found all three.', 'God, Brother, self', 16, 8),
(52, 'A morning-glory at my window satisfies me more than the metaphysics of books.', 'Mornimg', 17, 8),
(53, 'I always prefer to believe the best of everybody, it saves so much trouble.', 'Believe, Best', 18, 8),
(54, 'Be curious, not judgmental.', 'Curious', 17, 8),
(55, 'Give me odorous at sunrise a garden of beautiful flowers where I can walk undisturbed.', 'Garden, Beautiful', 17, 8),
(56, 'Without wonder and insight, acting is just a trade. With it, it becomes creation.', 'Acting, Creation', 2, 8),
(57, ' A minute of perfection was worth the effort. A moment was the most you could ever expect from perfection.', 'Perfections', 3, 8),
(58, 'I have had a perfectly wonderful evening, but this wasn\'t it.', 'Evenimg', 19, 8),
(59, ' So long as the memory of certain beloved friends lives in my heart, I shall say that life is good.', 'Apprication, Memory, Friends, hearth, Life, Good', 4, 8),
(60, 'An Editor becomes kind of your mother. You expect love and encouragement from an Editor.', 'Mother, Love, Encouragement, Work', 8, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
