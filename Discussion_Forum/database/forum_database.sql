USE forum2;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `replied` int(11) NOT NULL,
  `question_id` varchar(50) NOT NULL,
  `answer_detail` varchar(2000) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `like` int(20) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;


--
-- Dumping data for table `answer`
--
TRUNCATE TABLE answer;
INSERT INTO `answer` (`answer_id`, `replied`, `question_id`, `answer_detail`, `datetime`, `user_id`, `like`) VALUES
(11, 0, '17', 'Coffee is dead', '2016-08-08 05:55:27', 7, 0),
(12, 0, '17', 'are you on linux or windows?:\r\nI do most dev on osx or in a vagrant machine (centos), and we deploy to centos google cloud boxes at work.\r\n\r\nhow do i migrate from 0.12.14 to the current version of node?:\r\n\r\nUnfortunately it\'s painful. You have to just install the new version of node and see what breaks. Generally binary packages will be broken (there have been several large-ish NAN updates since 0.12.xx, but almost all packages can be upgraded to the most modern and work fine).\r\n\r\nwhy would you ever tell yourself "i just dont have enough javascript in my life":\r\nThere\'s never enough JavaScript', '2016-08-08 05:52:44', 8, 0),
(13, 0, '17', 'how do i migrate from 0.12.14 to the current version of node?', '2016-08-08 05:30:18', 9, 0),
(15, 0, '17', 'why would you ever tell yourself "i just dont have enough javascript in my life\'', '2016-08-08 05:29:45', 4, 0),
(16, 0, '21', 'that alola raichu doe. I wonder if there is going to be an aloha pikachu there will be riots', '2012-04-13 12:20:50', 4, 0),
(17, 0, '17', 'are you on linux or windows?', '2016-08-08 05:29:17', 3, 0),
(31, 0, '37', 'sure let\'s just learn java in a day', '2016-03-27 20:29:20', 2, 0),
(37, 0, '39', 'Is this it?', '2015-09-09 02:56:02', 9, 0),
(41, 0, '14', 'Of course not. Your language should have a library that parses html anyway', '2016-03-05 21:17:25', 3, 6),
(42, 0, '14', '\r\nare you telling me lxml is ported in every popular web dev language? no way thats cool', '2016-03-05 21:59:42', 8, 9),
(45, 0, '39', 'watch this if y\'all haven\'t seen it: https://youtu.be/rVPlMM_aSn4?t=1417', '2015-09-09 03:34:58', 3, 0),
(46, 0, '39', 'there is now ', '2015-09-09 03:40:23', 8, 0);


CREATE TABLE IF NOT EXISTS `chat` (
  `chatdetail_id` int(11) NOT NULL AUTO_INCREMENT,
  `cdatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(1000) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  PRIMARY KEY (`chatdetail_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40;
--
-- Dumping data for table `chat`
--
TRUNCATE TABLE chat;
INSERT INTO `chat` (`chatdetail_id`, `cdatetime`, `message`, `user_id`, `chat_id`) VALUES
(13, '2012-04-17 14:28:03', 'Hi Susan, my name is Mark!', 8, 5),
(14, '2012-04-17 14:28:22', 'Hey Denise, can you help me?', 8, 6),
(15, '2012-04-17 14:41:26', 'Hi', 9, 5),
(16, '2012-04-17 14:42:12', 'How are you?', 9, 5),
(17, '2012-04-17 14:42:55', 'Are you there?', 9, 5),
(18, '2012-04-17 14:43:32', 'I don\'t think my messages are going through.', 9, 5),
(19, '2012-04-17 14:43:52', 'Kannst du englisch?', 9, 5),
(22, '2012-04-17 14:46:39', 'Oh, now I see the messages. Whoops!', 9, 5),
(23, '2012-04-17 14:46:49', 'Mark, here! I\'m fine.', 8, 5),
(24, '2012-04-18 09:37:31', 'Hey', 5, 7),
(27, '2012-04-19 12:12:32', 'Susan sent me a lot of messages..', 12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `chatmaster`
--

CREATE TABLE IF NOT EXISTS `chatmaster` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_from` int(11) NOT NULL,
  `user_id_to` int(11) NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `chatmaster`
--
TRUNCATE TABLE chatmaster;
INSERT INTO `chatmaster` (`chat_id`, `user_id_from`, `user_id_to`) VALUES
(5, 8, 9),
(6, 8, 2),
(7, 5, 8),
(8, 8, 5);
-- --------------------------------------------------------

--
-- Table structure for table `question`
--
CREATE TABLE IF NOT EXISTS `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(50) NOT NULL,
  `question_detail` varchar(2000) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `subtopic_id` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `question`
--

TRUNCATE TABLE question;
INSERT INTO `question` (`question_id`, `heading`, `question_detail`, `datetime`, `user_id`, `subtopic_id`, `views`) VALUES
(14, 'you shouldn\'t use regex to parse html', '[This message was deleted at the request of the original poster]', '2016-03-05 21:13:15', 9, 12, 208),
(15, '[SELL] Wii U (Black) with Smash Brothers', 'Looking for $180 shipped. (NO SMASH BROTHERS)\r\nGreat deal considering the console is like $250 used.\r\nHad to sell the game to pay for gas.', '2016-08-09 17:14:57', 9, 13, 11),
(17, 'Ask me about node.js', 'I write node at work, and I\'ve been using it since before there was an installer. I can probably answer questions about everything from performance to devops. \r\n\r\nAnyone have any node.js questions?', '2016-08-08 05:16:53', 8, 12, 97),
(20, 'Which websites have the best layouts?', 'see title', '2016-03-29 01:30:31', 8, 12, 14),
(21, 'New Female Meowth Form... That\'s Right!', 'http://www.polygon.com/2016/8/11/12438262/pokemon-sun-and-moon-trailer-team-skull-alola-raichu', '2016-08-11 16:23:21', 3, 13, 22),
(22, 'Fusion vs Zero Mission', 'Zero Mission. The gameplay mechanics felt a lot smoother, and the game can be non-linear, whereas Fusion error-trapped its only potential sequence break', '2016-07-20 05:29:15', 2, 13, 5),
(23, 'Legend of Zelda: Breath of the Wild Trailer', 'https://www.youtube.com/watch?v=1rPxiXXxftE', '2016-06-14 18:08:38', 7, 13, 8),
(25, 'How do I get rid of this damn line!', 'Can\'t get rid of this line. I\'m using bootstrap & custom css. Trying to modify the header & nav-bar.\r\nTried setting the border to 0px. Suggestions? It\'s ruining the transparent experience. ', '2012-04-22 05:39:06', 8, 12, 8),
(37, 'I need to learn Java today, gimme links!', 'Maybe some kewl conference talks specifically about spring, maven, java 8. I\'m familiar with how java works and I\'ve written basic Java code before but I\'ve never had to write it professionally and tomorrow I have to so gimme some stuff plz', '2012-04-25 14:24:11', 9, 19, 28),
(38, 'Modern Java - A Guide to Java 8', 'https://github.com/winterbe/java8-tutorial/blob/master/README.md    \r\n\r\nwelcome to 2015 where java isn\'t terrible', '2012-04-25 14:29:52', 9, 19, 18),
(39, 'Is there a Colbert Late Show topic', '?', '2015-09-09 02:52:19', 5, 20, 17),
(40, 'Come up with a joke to go with this punchline', '"I have no crew"', '2016-08-09 04:13:35', 9, 20, 7);

-- --------------------------------------------------------

--
-- Table structure for table `subtopic`
--

CREATE TABLE IF NOT EXISTS `subtopic` (
  `subtopic_id` int(11) NOT NULL AUTO_INCREMENT,
  `subtopic_name` varchar(50) NOT NULL,
  `subtopic_description` varchar(500) NOT NULL,
  `s_status` varchar(20) NOT NULL,
  `topic_id` int(11) NOT NULL,
  PRIMARY KEY (`subtopic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `subtopic`
--

TRUNCATE TABLE subtopic;
INSERT INTO `subtopic` (`subtopic_id`, `subtopic_name`, `subtopic_description`, `s_status`, `topic_id`) VALUES
(12, 'Q&A', 'Web development is a broad term for the work involved in developing a web site for the Internet (World Wide Web) or an intranet (a private network).', 'true', 17),
(13, 'Nintendo', 'Nintendo Co., Ltd. is a Japanese multinational consumer electronics and software company headquartered in Kyoto, Japan', 'true', 18),
(14, 'Hacking', 'In the computer security context, a hacker is someone who seeks and exploits weaknesses in a computer system or computer network.', 'true', 19),
(15, 'Privacy', 'Internet privacy involves the right or mandate of personal privacy concerning the storing, repurposing, provision to third parties, and displaying of information pertaining to oneself via the Internet.', 'tr', 19),
(16, 'Applications', 'A mobile app is a software application designed to run on mobile devices such as smartphones and tablet computers.', 'tr', 21),
(19, 'Java', 'Java is a general-purpose computer programming language that is concurrent, class-based, object-oriented, and specifically designed to have as few implementation dependencies as possible.', 'tr', 24),
(20, 'Funny', '', 'tr', 25),
(22, 'C#', 'C# (pronounced as see sharp) is a multi-paradigm programming language encompassing strong typing, imperative, declarative, functional, generic, object-oriented, and component-oriented programming disciplines.', 'tr', 24);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_name` varchar(50) NOT NULL,
  `topic_type` varchar(50) NOT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `topic`
--

TRUNCATE TABLE topic;
INSERT INTO `topic` (`topic_id`, `topic_name`, `topic_type`) VALUES
(17, 'Web Development', 'N/A'),
(18, 'Games', 'N/A'),
(19, 'Computer Security', 'N/A'),
(21, 'Android', 'N/A'),
(24, 'Application Coding', 'N/A'),
(25, 'Random', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_acc_active` tinyint(1) DEFAULT NULL,
  `dob` date NOT NULL,
  `e_mail` varchar(100) DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `uimg` varchar(255) NOT NULL,
  `isuser` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `user`
--


TRUNCATE TABLE user;
INSERT INTO `user` (`user_id`, `country`, `state`, `address`, `user_type`, `username`, `fullname`, `password`, `user_acc_active`, `dob`, `e_mail`, `gender`, `uimg`, `isuser`) VALUES
(1, 'United States', 'Michigan', '-', 'admin', 'admin', 'administrator', '‘admin’', NULL, '2001-12-13', 'admin@admin.com', '0', 'user_images/admin.jpg', 1),
(2, 'United States', 'California', '68 Village Crossing', 'user', 'dhunt1', 'Denise Hunt', '2UzwJUXP', NULL, '1991-05-14', 'dhunt1@google.ca', '1', 'user_images/1.jpg', 0),
(3, 'United States', 'California', '3948 Amoth Place', 'user', 'llarson2', 'Lois Larson', 'EBcOXKrsINlK', NULL, '1992-07-17', 'llarson2@amazon.co.uk', '1', 'user_images/2.jpg', 0),
(4, 'United States', 'Ohio', '79 Shoshone Avenue', 'user', 'cmontgomery3', 'Carol Montgomery', 'mofrqlN9pH2p', NULL, '1999-07-23', 'cmontgomery3@bandcamp.com', '1', 'user_images/3.jpg', 0),
(5, 'United States', 'Oklahoma', '2 Longview Circle', 'user', 'dandrews4', 'Denise Andrews', '9gjDNiqs', NULL, '2004-04-11', 'dandrews4@goodreads.com', '1', 'user_images/4.jpg', 1),
(6, 'United States', 'Florida', '36301 Vidon Drive', 'user', 'fwells5', 'Frances Wells', '7zxxBpCl', NULL, '2002-08-28', 'fwells5@vk.com', '1', 'user_images/5.jpg', 0),
(7, 'United States', 'Florida', '166 Browning Pass', 'user', 'cthomas6', 'Charles Thomas', 'DaUxAUWJ', NULL, '1994-11-08', 'cthomas6@google.cn', '0', 'user_images/6.jpg', 0),
(8, 'United States', 'Tennessee', '08 Esker Road', 'user', 'mfoster7', 'Mark Foster', 'o4SFAMKNij', NULL, '2004-03-04', 'mfoster7@live.com', '0', 'user_images/7.jpg', 0),
(9, 'United States', 'Alabama', '4675 Eagle Crest Parkway', 'user', 'slawson8', 'Susan Lawson', '3pw4QKZwrYBp', NULL, '1999-03-17', 'slawson8@independent.co.uk', '1', 'user_images/8.jpg', 0),
(10, 'United States', 'Washington', '03784 Surrey Plaza', 'user', 'dcook9', 'Denise Cook', 'JLeXw3CaW', NULL, '1991-12-17', 'dcook9@msn.com', '1', 'user_images/9.jpg', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;