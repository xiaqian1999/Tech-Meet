-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 07, 2020 at 10:49 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Events`
--

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE `Events` (
  `id` int(11) NOT NULL,
  `event_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_information` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `event_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`id`, `event_title`, `event_link`, `event_information`, `event_type`, `date`, `created`, `modified`, `status`) VALUES
(1, 'competition', 'https://queer-hack.devpost.com/?ref_content=default&ref_feature=', 'queer_hack will be one of the first hackathons in the nation run', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(2, 'Create apps and games to solve biological problems', 'https://eco-it-biohackathon-11439.devpost.com/?ref_content=defau', 'Create apps and games to solve biological problems Biohackathon', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(3, 'Create apps and games to solve biological problems', 'https://eco-it-biohackathon-11439.devpost.com/?ref_content=defau', 'Create apps and games to solve biological problems Biohackathon', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(4, 'TechTogether New York\'s second all-female, femme, and non-binary hackathon', 'https://techtogether-new-york-2020.devpost.com/?ref_content=defa', 'The theme for TechTogether New York 2020 is Embracing Uncertaint', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(5, 'Because DeFi can make life better for everyone', 'https://humandefihaeck.devpost.com/?ref_content=default&ref_feat', 'æternity blockchain is an Erlang-based scalable smart contract ', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(6, 'Create your own smart infrastructure', 'https://campus2030.devpost.com/?ref_content=default&ref_feature=', 'Can you be the team that helps come up with \"The Concept\" ', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(7, 'Like regular CatHacks, but colder!', 'https://cathacks-winter-edition.devpost.com/?ref_content=default', 'The Explorer Fellowship is designed around a series of two week,Hackathon/fellowship', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(8, 'Join and start building solutions for the public, local communities and businesses using HERE Data Layers.', 'https://herehackathon.devpost.com/?ref_content=featured&ref_feat', 'When looking at a map, what do you see? What seems like one image,', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(9, 'Create best educational app that would assist with online schooling and make people passionate about school.', 'https://vision4knowledge.devpost.com/?ref_content=default&ref_fe', 'Education needs to be improved! With Covid-19 and an online education, ', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(10, 'Pakistan Civic Hackathon 2020', 'https://cfphacks2020.devpost.com/?ref_content=default&ref_featur', 'Civic Hackathon 2020, presented by Code for Pakistan and Telenor', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(11, 'Hacking competition', 'https://the-python-coders.devpost.com/?ref_content=default&ref_f', 'Opening Ceremony at Tuesday. Project themes will be disclosed in', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(12, 'Hacking competition', 'https://winterhacklympics.devpost.com/?ref_content=default&ref_f', 'Let the hacking races begin! Winter Hacklympics is here to lead', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(13, 'Hacking Competition', 'https://psnhackathon.devpost.com/?ref_content=default&ref_featur', 'Our Hackathon is made for High School and Middle School students', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(14, 'Hacking Competition', 'https://letshack.devpost.com/?ref_content=default&ref_feature=ch', 'LETS HACK 2020 is a 36-hours power-packed virtual ', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(16, 'Hacking Competition', 'https://bloom-fellowship-projects.devpost.com/?ref_content=defau', 'Hello Bloom fellows! This is the official devpost for the CL x A', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(17, 'Hacking Competition', 'https://holidayhacks.devpost.com/?ref_content=default&ref_featur', 'Holiday Season is here and it\'s time for hacking!', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(18, 'Hacking Competition', 'https://cci-design-comp.devpost.com/?ref_content=default&ref_fea', 'Students need a flexible way to create a master’s program.', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(19, 'Hacking Competition', 'https://ctc20.devpost.com/?ref_content=default&ref_feature=chall', 'The Challenge seeks entrepreneurs that incorporate smart city', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(20, 'Hacking Competition', 'https://fintech.devpost.com/?ref_content=featured&ref_feature=ch', 'Be a part of what we hope will be the most impactful fintech hack', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(21, 'Hacking Competition', 'https://quhacks2020.devpost.com/?ref_content=default&ref_feature', 'Discover your ability to create change by developing technology', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(22, 'Enterprise Computing Skills: University of Bedfordshire', 'https://www.eventbrite.com/e/enterprise-computing-skills-univers', 'Brought to you by IBM Z & University of Bedfordshire: a hands-on', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(23, 'Tech Startup Skills with THE NESTHUB INCUBATOR (KENYA)', 'https://www.eventbrite.com/e/tech-startup-skills-with-the-nesthu', 'Join this session to hear from THE NESTHUB INCUBATOR in Kenya', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(24, 'Skill Building Workshop: brought to you by SAVe Foundation & IBM', 'https://www.eventbrite.com/e/skill-building-workshop-brought-to-', 'It\'s a free and virtual event to learn enterprise computing', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(25, 'Ija Codi (for Tunisian Students)', 'https://www.eventbrite.com/e/ija-codi-for-tunisian-students-tick', 'It\'s a free event for Tunisian students to learn enterprise', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(26, 'Establishing Trust in the Age of AI (Part 1) | MKAI January', 'https://www.eventbrite.com/e/establishing-trust-in-the-age-of-ai', 'We are a tech company that specialises in data and information', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(27, 'TechPreneur: Tech for Africa', 'https://www.eventbrite.com/e/techpreneur-tech-for-africa-tickets', 'Event Agenda: Careers in Enterprise Computing: What is enterprise?', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(28, 'Virtual Career Panel with AUTM & IBM', 'https://www.eventbrite.com/e/virtual-career-panel-with-autm-ibm-', 'Panel Discussion and Breakout rooms focused on specific careers', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(29, 'Centriq Training & Network Tech Webinar: M365/Teams: What to Use', 'https://www.eventbrite.com/e/centriq-training-network-tech-webin', ' Centriq Training is partnering with Network Tech to provide an I', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(30, '2020 Emerging Technologies in Automation Speaker Series - DataRe', 'https://www.eventbrite.com/e/2020-emerging-technologies-in-autom', 'This webinar is part of the Emerging Technologies in Automation', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(31, 'Technology Bootcamp 101', 'https://www.eventbrite.com/e/technology-bootcamp-101-tickets-128', 'Youtube and Tricks Google Meet + Workspace Video Conferencing', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(32, 'DSS Finance & Technology', 'https://www.eventbrite.com/e/dss-finance-technology-tickets-1070', 'The Data Science Salon is a unique vertical focused conference', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(33, 'Navigating The New Technology Landscape', 'https://www.eventbrite.com/e/navigating-the-new-technology-lands', 'COVID-19 has left businesses with a major problem to solve…', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(34, 'Round Table | Technology Foresight', 'https://www.eventbrite.com/e/round-table-technology-foresight-ti', 'We believe technology exerts an outsized effect on society', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(35, 'Modelling learning in Science and Technology', 'https://www.eventbrite.com/e/modelling-learning-in-science-and-t', 'Join us as we take a look at Keynote and the animation tools to', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(36, 'Creative Technologies Online CPD', 'https://www.eventbrite.com/e/creative-technologies-online-cpd-ti', 'Digital technology is a highly creative resource that enables', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(37, 'Student engagement with new technologies', 'https://www.eventbrite.com/e/student-engagement-with-new-technol', 'In recent months, many faculty have been rethinking course delivery', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(38, 'Technology Enhanced Learning', 'https://www.eventbrite.com/e/technology-enhanced-learning-regist', 'Our CPD activities are free to those who are involved in teaching', 'Learning', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(307, 'Advanced Machine Learning', 'https://www.eventbrite.com/e/advanced-machine', ' This course introduces students Artificial Intelligence', 'Learning', '2021-01-09', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(308, 'Aquaponics: Sustainability, Ecology, and Technology', 'https://www.eventbrite.com/e/aquaponics-sustainability-', 'This workshop will focus on the use of an aquaponics system ', 'Learning', '2021-01-18', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(309, 'Using Artificial Intelligence', 'https://www.eventbrite.com/e/using-artificial-', 'From writing your ML to serving reliable ML apps ', 'Learning', '2021-01-12', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(310, 'CoderDojo Online', 'https://www.eventbrite.com/e/coderdojo-online-tickets-', 'Video games don’t have to be bad. What if they were a way to turn them from afternoon time-waster to impactful', 'Learning', '2021-01-16', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(311, 'Women in Manufacturing Technology Apprenticeships Live Chat,', 'https://www.eventbrite.com/e/women-in-manufacturing-technology-', 'Is an apprenticeship in advanced manufacturing for you?\r\n', 'Learning', '2021-01-07', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(312, 'Coding for Women by Women', 'https://www.eventbrite.com/e/coding-for-women-by-women', 'Hack Reactor\'s Coding For Women By Women ', 'Learning', '2021-01-07', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(313, 'Coding For Kids (Age 9-11)', 'https://www.eventbrite.com/e/coding-for-kids-age-9-11', 'Coding for kids (otherwise known as computer programming) ', 'Learning', '2021-01-13', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(314, 'January 2021 Technical Meeting', 'https://www.eventbrite.com/e/january-2021-technical-', 'Join us on January 19th as we learn from Bryan DeBois', 'Learning', '2021-01-19', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(315, 'The Lean Startup Methodology', 'https://www.eventbrite.com/e/the-lean-startup-methodology', 'The Lean Startup provides a scientific approach to creating and managing startups ', 'Learning', '2021-01-12', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(316, 'Learn to Code Online Taster Workshop', 'https://www.eventbrite.com/e/learn-to-code-online-taster-', 'Curious about coding? Join Mayden Academy for a free online workshop!', 'Learning', '2021-01-13', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(317, 'Remote Ops 101: Explore Ethical Hacking & Cybersecurity Careers', 'https://www.eventbrite.com/e/remote-ops-101-explore-ethical', ' Our remote instruction is Live, Online interactive lecture style', 'Learning', '2021-01-02', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(318, 'Python Mastery - Level 2: 01/06 to 01/27 - 6 PM - once a week', 'https://www.eventbrite.com/e/python-mastery-level-2-0106-to', 'Welcome to the world of Python! One of the most popular languages.', 'Learning', '2021-01-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(319, 'Creative Technology with limitless .NET 5!', 'https://www.meetup.com/digital-creative-technology/events', ' Creative Technology with limitless .NET 5! Join us for the event after the .NET Conference 2020 showcasing the release of .NET 5! ', 'Internship', '2020-12-15', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(320, 'InsurTech NY: Emerging Technologies - AI, RPA and IoT', 'https://www.meetup.com/insurtechNewYork/events/274539346', 'The distribution of technology is not equal. ', 'Internship ', '2020-12-10', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(321, 'APPLYING AI & MACHINE LEARNING TO FINANCE & TECHNOLOGY', 'https://www.meetup.com/tableau-powerbi-data-science-bi-excel/', '3 Day Virtual Conference. There are both free and paid', 'Internship ', '2020-12-11', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(322, 'Boston New Technology Artificial Intelligence and Data Startup Showcase #BNT117,', 'https://www.meetup.com/Boston-AI-Network-Artificial-Intelligence-', 'Come learn about 6 innovative and exciting Artificial Intelligence and Data products from local founders', 'Internship ', '2020-12-16', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(323, 'Don\'t miss this event!!! UiPath Reboot Work Festival 2020 Invitation', 'https://www.meetup.com/Philadelphia-Robotic-Process-Automation-RPA-Meetup-', 'We are hosting our first ever UiPath Reboot Work Festival with automation thought', 'Internship', '2020-12-15', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(324, 'VIRTUAL Crash Course - Learn JavaScript!-Chattanooga', 'https://www.meetup.com/Chattanooga-Savvy-Coders-Meetup/events', 'Join a Profession That’s Projected To Grow By 13%* In The Coming Years and Pays Great', 'Internship', '2020-12-16', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(325, 'VIRTUAL Crash Course-Learn JavaScript!', 'https://www.meetup.com/Kansas-City-Savvy-Coders-Meetup/events/273925439', 'Join a Profession That’s Projected To Grow By 13%* In The Coming Years and Pays Great, Too.\r\nSign up for our next FREE JavaScript class and learn more about JavaScript', 'Internship', '2020-12-16', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(326, 'Hackathon -Future Workforce in Global Digital Economy', 'https://www.meetup.com/testoper/events/274881054', 'nviting hackers and industry leaders for the great cause (nonprofit) to innovate ', 'Internship', '2021-07-24', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(327, 'Intro to Coding (HTML, CSS, JavaScript & React)', 'https://www.meetup.com/paperspace/events/273981526', 'Paperspace stands with Black Lives and wants to contribute to the movement.\r\n', 'Internship', '2020-12-12', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(328, '[ONLINE] How to widget && A great technical resume for 2021 && Networking', 'https://www.meetup.com/iOSoho/events/274923428', 'Annnd.. We are back! iOSoho has been gone for a little while', 'Internship', '2020-12-07', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(329, 'Getting Started with Cyber Resiliency & Modern Data Protection', 'https://www.meetup.com/IBMstorage/events/274650180', 'Come and learn about cyber resiliency and how to protect your data ', 'Internship', '2020-12-10', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(330, 'Create a product to connect people virtually! This event is for San Jose State University students.', 'https://sceggraph.devpost.com/?ref_content=default&ref_feature=challenge&ref_medium=discover', 'Connecting with others when we can\'t meet them in person can be difficult. ', 'Hackathon', '2020-01-10', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(331, 'Help define the future of fashion!', 'https://ksu-fashion-tech-hack-2021.devpost.com/?ref_content=default&ref_feature=challenge&re', 'The annual Fashion/Tech Hackathon is a dynamic, cross-circular event allowing teams of students from all across the U.S. and Canada', 'Hackathon', '2020-12-06', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(353, 'Come hack at Georgetown University (virtually)!', 'https://hoya-hacks-2021.devpost.com/?ref_content= ', 'Hey Hackers! Welcome to the 6th iteration of Hoya Hacks, hosted at Georgetown University', 'Hackathon', '2021-01-31', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(354, 'The stuff you really care about: free swag, engaging workshops, great prizes.', ' https://cornhacks-2021.devpost.com/?ref_content=default&ref_feature=', '$4100 in Prizes 24hr of Hacking! Engaging Workshops Fun Activities', 'Hackathon', '2021-01-30', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(355, 'DrChrono invites you to join our very first Virtual & Integrated Healthcare Hackathon!', 'https://drchronohackathon2021.devpost.com/?ref_content=default&ref_feature ', 'DrChrono would love to invite designers and developers to innovate', 'Hackathon', '2021-01-12', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(356, 'Hackdemonium - One Hell of a Hackathon', 'https://hackdemonium.devpost.com/?ref_content=default&r', 'Hackdemonium is a hackathon designed to inspire and empower young coders', 'Hackathon', '2021-01-15', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(357, 'Help create solutions for community not-for-profits', 'https://hack-for-good-accenture.devpost.com/?re', 'Whether you’re an undergraduate student studying IT, engineering, maths, science, business, or the creative arts.', 'Hackathon', '2021-01-16', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(358, 'A massive global high-school virtual hackathon.', 'https://thetahacks.devpost.com/?ref_content=default&ref_feature=cha', 'Welcome to ThetaHacks Virtual! ThetaHacks is a 36-hour virtual high-school hackathon.', 'Hackathon', '2021-01-18', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(359, 'Machine Learning Doesn\'t Have to be Just Another Buzz Word.', 'https://sigmoidhacks.devpost.com/?ref_content=default&ref_', 'Sigmoid Hacks is a free 3-day International virtual event for high school and college students.', 'Hackathon', '2021-01-18', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(360, 'StarHacks is an all-female identifying and nonbinary high school hackathon.', 'https://starhacks.devpost.com/?ref_content=default&r ', 'is an all-female identifying and nonbinary high school hackathon.', 'Hackathon', '2021-01-23', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(361, 'United We Code', 'https://the-cuny-hackathon-2021.devpost.com/?ref_content=default&r', 'At the start of new year in 2021 CUNY students will unite to participate in the first ever virtually held CUNY Hackathon.', 'Hackathon', '2021-01-24', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(362, 'Using Big data and Real-World Evidence', 'https://yale-hack-health.devpost.com/?ref', 'Tracks: 1. Economic Forecasting | 2. Medical Sensors and IoT.', 'Hackathon', '2021-01-24', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(363, 'Wharton Customer Analytics will host an intensive one-week data competition with Essity.', 'https://essity-datathon.devpost.com/?ref_content=de', 'Hone your analytics skills, working with real-world data!', 'Hackathon', '2021-01-28', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(364, 'University of Bridgeport Student Entrepreneur Center Annual Hackathon', 'https://ubridgeport-hackathon.devpost.com/?ref_content=default&re', 'UB Hackathon is an annual intercollegiate hackathon.', 'Hackathon', '2021-02-11', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(365, 'GTA wide Hackathon for high school students', 'https://gta-hacks-11408.devpost.com/?', 'A Hackathon is a coding rave that takes place over numerous days.', 'Hackathon', '2021-02-14', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(366, 'A 24-hour hackathon dedicated to educate and promote to the world about the intersection of economics and computer science.', 'https://econhacks-2021.devpost.com/?', 'This isn’t like most hackathons, instead it\'s a targeted competition.', 'Hackathon', '2021-02-13', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(367, 'StarHacks Hackathon', 'https://www.eventbrite.com/e/starhacks-hackathon-tic', 'StarHacks is an all-female identifying and nonbinary high school hackathon', 'Hackathon', '2021-01-23', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(368, 'Climate Crisis AI Hackathon + Kickoff Conference', 'https://www.eventbrite.com/e/', 'It will bring together beginners and experts to tackle Climate Change related problems using AI', 'Hackathon', '2021-01-22', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(369, 'RecruitaTH.0n', 'https://www.eventbrite.com/e/recruitath0n-jan-2021-virtual-hackathon-tickets ', 'TH.0 strives on being fresh, dynamic, and forward-thinking towards talent through innovation for the tech echo system.', 'Hackathon', '2021-01-15', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(370, 'Code2K', 'https://www.eventbrite.com/e/code2k-tickets-12722', 'Code2K is a weekend of CS discovery. It\'s a self-directed hackathon for students all around the world.', 'Hackathon', '2021-01-08', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(371, 'TechTogether Seattle 2021', 'https://www.eventbrite.com/e/techtogether-seattle-2021-tickets- ', 'The theme Always Together, Never Apart represents the ability for technology to bring us closer together', 'Hackathon', '2021-01-22', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(372, 'ElleHacks 2021', 'https://www.eventbrite.com/e/ellehacks-2021-tickets-', 'A free Networking opportunity for all programs! ElleHacks is Canada\'s largest student-run all-women* hackathon', 'Hackathon', '2021-01-15', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(373, 'Bio-Trac\'s Thursday Seminar Series – Special Topics in Biotechnology', 'https://www.eventbrite.com/e/bio-tracs-thursday-seminar', 'This series of twenty-five minute live webinars will feature experts', 'Hackathon', '2021-01-17', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(374, 'Hacky New Year 2021!', 'https://www.eventbrite.com/e/hacky-new-year-2021', 'Join us online on January 9th for a convening of our tech-for-good community.', 'Hackathon', '2021-01-09', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1),
(375, 'Develop a Successful Tech Startup Entrepreneurship Business Today! Europe', 'https://www.eventbrite.com/e/develop-a-successful-tech-startup', 'Develop a Successful Tech Startup Business Today! | Startup Hackathon', 'Hackathon', '2021-01-03', '2020-12-12 00:00:00', '2020-12-12 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Events`
--
ALTER TABLE `Events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Events`
--
ALTER TABLE `Events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
