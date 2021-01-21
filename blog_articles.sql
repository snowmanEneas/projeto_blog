-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (3,'Aprendendo python do básico','Aprendendo-python-do-basico','<p>Pode ser complicado no come&ccedil;o mas....</p>','2021-01-19 14:27:29','2021-01-19 14:27:29',11),(5,'CSS','CSS','<p>Hoje iremos aprender um pouco sobre CSS e html</p>','2021-01-19 14:46:09','2021-01-19 14:46:09',14),(6,'Bugs em python','Bugs-em-python','<p>Na &uacute;ltima atualiza&ccedil;&atilde;o ocorreram alguns bugs novos..</p>','2021-01-19 14:46:36','2021-01-19 14:46:36',11),(7,'O básico de JS','O-basico-de-JS','<p>Js &eacute; a linguagem mais...</p>','2021-01-19 14:46:56','2021-01-19 14:46:56',13),(8,'A linguagem dos jogos','A-linguagem-dos-jogos','<p>C# E C++ s&atilde;o conhecidas por...</p>','2021-01-19 14:47:19','2021-01-19 14:47:19',15),(9,'é realmente necessário inglês para programar','e-realmente-necessario-ingles-para-programar','<p>Hello people, today we gonna talk about...</p>','2021-01-19 14:48:21','2021-01-19 14:48:21',17),(10,'Mais jogos','Mais-jogos','<p>c++</p>','2021-01-19 14:48:31','2021-01-19 14:48:31',NULL),(11,'Javascript','Javascript','<h1>JavaScript&nbsp;<span class=\"color_h1\">Tutorial</span></h1>\r\n<div class=\"w3-clear nextprev\"><a class=\"w3-left w3-btn\" href=\"https://www.w3schools.com/default.asp\">❮ Home</a><a class=\"w3-right w3-btn\" href=\"https://www.w3schools.com/js/js_intro.asp\">Next ❯</a></div>\r\n<div class=\"w3-panel w3-info intro\">\r\n<p>JavaScript is the world\'s most popular programming language.</p>\r\n<p>JavaScript is the programming language of the Web.</p>\r\n<p>JavaScript is easy to learn.</p>\r\n<p>This tutorial will teach you JavaScript from basic to advanced.</p>\r\n<a class=\"w3-btn w3-margin-bottom\" href=\"https://www.w3schools.com/js/js_intro.asp\">Start learning JavaScript now &raquo;</a></div>\r\n<h2>Examples in Each Chapter</h2>\r\n<p>With our \"Try it Yourself\" editor, you can edit the source code and view the result.</p>\r\n<div class=\"w3-example\">\r\n<h3>Example</h3>\r\n<div class=\"w3-padding w3-white notranslate\">\r\n<h2>My First JavaScript</h2>\r\n<button type=\"button\">Click me to display Date and Time</button>\r\n<p id=\"demo\"></p>\r\n</div>\r\n<p><a class=\"w3-btn\" href=\"https://www.w3schools.com/js/tryit.asp?filename=tryjs_myfirst\" target=\"_blank\" rel=\"noopener\">Try it Yourself &raquo;</a></p>\r\n</div>\r\n<hr />\r\n<h2>Use the Menu</h2>\r\n<p>We recommend reading this tutorial, in the sequence listed in the menu.</p>\r\n<p>If you have a large screen, the menu will always be present on the left.</p>\r\n<p>If you have a small screen, open the menu by clicking the top menu sign&nbsp;<span class=\"w3-xlarge\">☰</span>.</p>\r\n<hr />\r\n<h2>Learn by Examples</h2>\r\n<p>Examples are better than 1000 words. Examples are often easier to understand than text explanations.</p>\r\n<p>This tutorial supplements all explanations with clarifying \"Try it Yourself\" examples.</p>\r\n<div class=\"w3-panel w3-note\">\r\n<p>If you try all the examples, you will learn a lot about JavaScript, in a very short time!</p>\r\n<a class=\"w3-btn\" href=\"https://www.w3schools.com/js/js_examples.asp\">JavaScript Examples &raquo;</a></div>\r\n<hr />\r\n<h2>Why Study JavaScript?</h2>\r\n<p>JavaScript is one of the&nbsp;<strong>3 languages</strong>&nbsp;all web developers&nbsp;<strong>must</strong>&nbsp;learn:</p>\r\n<p>&nbsp;&nbsp; 1.&nbsp;<a href=\"https://www.w3schools.com/html/default.asp\"><strong>HTML</strong></a>&nbsp;to define the content of web pages</p>\r\n<p>&nbsp;&nbsp; 2.&nbsp;<a href=\"https://www.w3schools.com/css/default.asp\"><strong>CSS</strong></a>&nbsp;to specify the layout of web pages</p>\r\n<p>&nbsp;&nbsp; 3.&nbsp;<strong>JavaScript</strong>&nbsp;to program the behavior of web pages</p>\r\n<hr />\r\n<div id=\"midcontentadcontainer\">\r\n<div id=\"snhb-mid_content-0\" data-google-query-id=\"CJX-5MbHqO4CFTo0uQYdt8gG5w\">\r\n<p id=\"ad_label_snhb-mid_content-0\" class=\"ad_label_snhb\">ADVERTISEMENT</p>\r\n<div id=\"google_ads_iframe_/22152718/sws-hb//w3schools.com//mid_content_0__container__\"><iframe id=\"google_ads_iframe_/22152718/sws-hb//w3schools.com//mid_content_0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/22152718/sws-hb//w3schools.com//mid_content_0\" width=\"728\" height=\"90\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" data-google-container-id=\"6\" data-load-complete=\"true\" data-mce-fragment=\"1\"></iframe></div>\r\n</div>\r\n</div>\r\n<hr />\r\n<h2>Learning Speed</h2>\r\n<p>In this tutorial, the learning speed is your choice.</p>\r\n<p>Everything is up to you.</p>\r\n<p>If you are struggling, take a break, or re-read the material.</p>\r\n<p><strong>Always</strong>&nbsp;make sure you understand&nbsp;<strong>all</strong>&nbsp;the \"Try-it-Yourself\" examples.</p>\r\n<p>The only way to become a clever programmer is to: Practice. Practice. Practice. Code. Code. Code !</p>\r\n<hr /><form id=\"w3-exerciseform\" spellcheck=\"false\" action=\"https://www.w3schools.com/js/exercise_js.asp?filename=exercise_js_variables1\" autocomplete=\"off\" method=\"post\" target=\"_blank\">\r\n<h2>Test Yourself With Exercises</h2>\r\n<div class=\"exercisewindow\">\r\n<h2>Exercise:</h2>\r\n<p>Create a variable called&nbsp;<code class=\"w3-codespan\">carName</code>&nbsp;and assign the value&nbsp;<code class=\"w3-codespan\">Volvo</code>&nbsp;to it.</p>\r\n<div class=\"exerciseprecontainer\">\r\n<pre>var <input maxlength=\"7\" name=\"ex1\" type=\"text\" /> = \"<input maxlength=\"5\" name=\"ex2\" type=\"text\" />\";\r\n</pre>\r\n</div>\r\n<br /><button class=\"w3-btn w3-margin-bottom\" type=\"submit\">Submit Answer &raquo;</button>\r\n<p><a href=\"https://www.w3schools.com/js/exercise_js.asp?filename=exercise_js_variables1\" target=\"_blank\" rel=\"noopener\">Start the Exercise</a></p>\r\n</div>\r\n</form><hr />\r\n<h2>Commonly Asked Questions</h2>\r\n<ul>\r\n<li>How do I get JavaScript?</li>\r\n<li>Where can I download JavaScript?</li>\r\n<li>Is JavaScript Free?</li>\r\n</ul>\r\n<p>You don\'t have to get or download JavaScript.</p>\r\n<p>JavaScript is already running in your browser on your computer, on your tablet, and on your smart-phone.</p>\r\n<p>JavaScript is free to use for everyone.</p>\r\n<hr />\r\n<h2>JavaScript References</h2>\r\n<p>W3Schools maintains a complete JavaScript reference, including all HTML and browser objects.</p>\r\n<p>The reference contains examples for all properties, methods and events, and is continuously updated according to the latest web standards.</p>\r\n<p><a class=\"w3-btn\" href=\"https://www.w3schools.com/jsref/default.asp\">Complete JavaScript Reference &raquo;</a></p>\r\n<hr />\r\n<h2>JavaScript Quiz Test</h2>\r\n<p>Test your JavaScript skills at W3Schools!</p>\r\n<p><a class=\"w3-btn\" href=\"https://www.w3schools.com/js/js_quiz.asp\">Start JavaScript Quiz!</a></p>\r\n<hr />\r\n<h2>JavaScript Exam - Get Your Diploma!</h2>\r\n<div class=\"w3-row\">\r\n<div class=\"w3-third w3-container w3-padding-24\"><a href=\"https://www.w3schools.com/cert/default.asp\"><img src=\"https://www.w3schools.com/images/w3certified_logo_250.png\" alt=\"W3Schools Certification\" /></a></div>\r\n<div class=\"w3-twothird w3-container\">\r\n<h2>W3Schools\' Online Certification</h2>\r\n<p>The perfect solution for professionals who need to balance work, family, and career building.</p>\r\n<p>More than 25 000 certificates already issued!</p>\r\n</div>\r\n</div>\r\n<p><a class=\"w3-btn\" href=\"https://www.w3schools.com/cert/default.asp\">Get Your Certificate &raquo;</a></p>\r\n<p>The&nbsp;<a href=\"https://www.w3schools.com/cert/default.asp\">HTML Certificate</a>&nbsp;documents your knowledge of HTML.</p>\r\n<p>The&nbsp;<a href=\"https://www.w3schools.com/cert/default.asp\">CSS Certificate</a>&nbsp;documents your knowledge of advanced CSS.</p>\r\n<p>The&nbsp;<a href=\"https://www.w3schools.com/cert/default.asp\">JavaScript Certificate</a>&nbsp;documents your knowledge of JavaScript and HTML DOM.</p>\r\n<p>The&nbsp;<a href=\"https://www.w3schools.com/cert/default.asp\">Python Certificate</a>&nbsp;documents your knowledge of Python.</p>\r\n<p>The&nbsp;<a href=\"https://www.w3schools.com/cert/default.asp\">jQuery Certificate</a>&nbsp;documents your knowledge of jQuery.</p>\r\n<p>The&nbsp;<a href=\"https://www.w3schools.com/cert/default.asp\">SQL Certificate</a>&nbsp;documents your knowledge of SQL.</p>\r\n<p>The&nbsp;<a href=\"https://www.w3schools.com/cert/default.asp\">PHP Certificate</a>&nbsp;documents your knowledge of PHP and MySQL.</p>\r\n<p>The&nbsp;<a href=\"https://www.w3schools.com/cert/default.asp\">Java Certificate</a>&nbsp;documents your knowledge of Java.</p>\r\n<p>The&nbsp;<a href=\"https://www.w3schools.com/cert/default.asp\">XML Certificate</a>&nbsp;documents your knowledge of XML, XML DOM and XSLT.</p>\r\n<p>The&nbsp;<a href=\"https://www.w3schools.com/cert/default.asp\">Bootstrap Certificate</a>&nbsp;documents your knowledge of the Bootstrap framework.</p>','2021-01-19 14:50:34','2021-01-19 14:50:34',13);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-20 22:43:13
