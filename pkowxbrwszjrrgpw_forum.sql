-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2024 at 06:43 AM
-- Server version: 10.6.17-MariaDB
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pkowxbrwszjrrgpw_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'PHP', 'PHP is an open-source server-side scripting language that many devs use for web development. It is also a general-purpose language that you can use to make lots of projects, including Graphical User Interfaces (GUIs).', 1, 0, '2022-05-16 10:02:41', '2022-05-16 10:02:41'),
(2, 'VB.NET', 'Visual Basic, originally called Visual Basic .NET, is a multi-paradigm, object-oriented programming language, implemented on .NET, Mono, and the .NET Framework. Microsoft launched VB.NET in 2002 as the successor to its original Visual Basic language.', 1, 0, '2022-05-16 10:03:27', '2022-05-16 10:03:27'),
(3, 'Python', 'Python is a high-level, interpreted, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically-typed and garbage-collected.', 1, 0, '2022-05-16 10:03:48', '2022-05-16 10:03:48'),
(4, 'JavaScript', 'JavaScript, often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. Over 97% of websites use JavaScript on the client side for web page behavior, often incorporating third-party libraries.', 1, 0, '2022-05-16 10:04:11', '2022-05-16 10:04:11'),
(5, 'test', 'test', 1, 1, '2022-05-16 10:04:54', '2022-05-16 10:04:59'),
(6, 'C', 'C language ', 1, 0, '2024-01-30 12:17:43', '2024-01-30 12:17:43'),
(7, 'ai', 'zryexytuxxr', 1, 0, '2024-03-15 06:36:35', '2024-03-15 06:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `comment_list`
--

CREATE TABLE `comment_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment_list`
--

INSERT INTO `comment_list` (`id`, `user_id`, `post_id`, `comment`, `date_created`) VALUES
(1, 4, 2, 'Test Comment 123', '2022-05-16 12:05:21'),
(2, 4, 2, '<p>This is a sample comment only</p>', '2022-05-16 13:00:42'),
(4, 4, 3, '<p>test 123</p>', '2022-05-16 13:54:01'),
(6, 8, 1, '<p>hjio9iuhiiujiuj</p>', '2024-01-24 10:20:28'),
(7, 1, 6, '', '2024-01-24 10:23:37'),
(8, 8, 7, '<p>test</p>', '2024-01-29 07:28:43'),
(10, 9, 2, '<p>jydgfuiygdw</p>', '2024-02-01 06:14:06'),
(11, 1, 9, '', '2024-02-01 06:19:03'),
(12, 14, 7, '<p>yy89kk</p>', '2024-03-15 06:15:23'),
(13, 14, 16, '<p>sdgnxfggdhfh</p>', '2024-03-15 06:49:28'),
(14, 14, 15, '', '2024-03-16 07:51:02'),
(15, 14, 15, '<p>dty</p>', '2024-03-16 07:51:06'),
(16, 14, 15, '<p>t4ws5ys</p>', '2024-03-19 06:18:25'),
(18, 14, 20, '<p>variable is container that store the data</p>', '2024-03-19 06:23:34'),
(19, 14, 21, '<p>hii</p>', '2024-03-19 07:20:01'),
(20, 20, 22, '<p>test</p>', '2024-04-06 05:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `post_list`
--

CREATE TABLE `post_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_list`
--

INSERT INTO `post_list` (`id`, `user_id`, `category_id`, `title`, `content`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 4, 1, 'Sample Topic Title', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur fringilla bibendum urna ac eleifend. Quisque in est eu ipsum blandit accumsan ultrices nec tortor. Aliquam lacinia, ex sit amet iaculis sollicitudin, urna odio tempor nulla, eu lacinia augue mi a felis. Quisque finibus in arcu sed ultricies. Duis eleifend metus consectetur vulputate bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut interdum libero vitae nisi finibus, non varius quam volutpat. Cras non iaculis neque. Integer bibendum sagittis dignissim. Ut aliquet suscipit velit sit amet hendrerit. Sed mattis pellentesque augue id bibendum. Phasellus quis justo ornare, faucibus arcu at, ullamcorper lectus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Nulla a nisl quis tellus volutpat lacinia. Nullam et eros ac mi dapibus ornare. Suspendisse sit amet purus mattis, ullamcorper nulla sit amet, euismod urna. Fusce ac pulvinar velit. Vivamus tellus nibh, pretium eu consectetur et, hendrerit eu elit. Proin et augue ultricies, euismod augue a, varius nibh. Donec condimentum justo erat, non cursus mi pharetra vel. Cras pretium nulla quis justo venenatis, vitae aliquet justo dapibus. Maecenas efficitur viverra tellus, vestibulum pharetra est dictum at. Aenean mauris tellus, luctus vitae odio sit amet, sagittis faucibus nisl. Aliquam in dignissim sapien, nec sagittis lorem. Donec facilisis vulputate purus vitae congue. Nunc eros risus, congue id nisi nec, hendrerit tristique sem. Phasellus sodales nunc arcu, nec ultricies tellus tincidunt et.</p>', 1, 1, '2022-05-16 11:13:02', '2024-03-02 18:48:00'),
(2, 4, 1, 'Topic 2 - Updated', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Quisque et commodo sem, sed aliquam justo. In varius erat purus, sit amet fermentum sapien semper sed. Quisque consequat blandit est eget gravida. Aliquam venenatis, libero eget hendrerit auctor, arcu dui interdum diam, ac hendrerit lacus eros ut sapien. Aenean commodo luctus metus eget vestibulum. Vestibulum nec convallis nulla, porttitor aliquet justo. In quis augue non ligula commodo tempus. Fusce ex ex, blandit sit amet lorem quis, pharetra aliquam leo. Mauris consequat vel mauris vitae consequat. Donec a enim ac erat malesuada varius non eget erat. Aliquam erat volutpat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Fusce quis nisi at libero sodales pretium. Proin interdum, nisl quis ornare malesuada, nisi erat vestibulum nisi, nec egestas leo orci vel mauris. Ut quis varius orci. Vivamus nec vulputate purus. Sed ut magna euismod, accumsan arcu non, sagittis purus. Ut tempor elit at scelerisque eleifend. Morbi pharetra est in nibh eleifend, nec sagittis orci posuere. In malesuada, libero sit amet rutrum accumsan, quam leo ultricies augue, a maximus leo massa sit amet diam. Nunc dictum orci dui, vitae condimentum ex porta in. Ut sodales posuere mollis. Sed at sem pellentesque ligula commodo blandit. Ut sem velit, vulputate at porttitor vel, rutrum sit amet velit. Nunc ultrices, felis lacinia lobortis pharetra, purus quam porta massa, sed hendrerit arcu mi in magna. In dignissim urna sit amet mi pharetra, eu molestie libero rhoncus. Sed sit amet ipsum accumsan libero ullamcorper egestas.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Aliquam et tincidunt eros. Pellentesque ut luctus leo, nec fermentum velit. Vestibulum a justo et ligula hendrerit laoreet vitae et nunc. Pellentesque commodo dignissim justo, rutrum dictum est euismod vel. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc convallis arcu nec ullamcorper gravida. Phasellus ullamcorper nisi euismod tellus convallis, a aliquet ex commodo. Vivamus cursus elit purus, eu tristique lorem congue nec. Suspendisse tincidunt commodo purus, eget pharetra ipsum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\">Morbi cursus tincidunt ex vel elementum. Suspendisse et suscipit quam, vel interdum elit. Nullam mollis massa nisi, id consectetur nibh sodales vel. Pellentesque lobortis dignissim odio, vitae hendrerit dolor sollicitudin sit amet. Suspendisse ut leo id ex interdum ornare eget eu ex. Fusce laoreet erat in leo venenatis scelerisque. Aliquam laoreet sem ipsum, ac euismod justo egestas a. Ut facilisis posuere ante, sit amet tincidunt augue pretium vitae. Curabitur ullamcorper venenatis felis, ac pharetra velit varius vitae. Quisque et dignissim orci. Mauris non felis nec ligula posuere dignissim. Vivamus semper lacinia magna sed mollis. Maecenas a euismod lectus.</p>', 1, 1, '2022-05-16 11:25:21', '2024-03-02 18:47:55'),
(3, 4, 2, 'test', '<p>Data to delete</p>', 1, 1, '2022-05-16 13:52:36', '2022-05-16 13:54:05'),
(4, 1, 1, 'test', '<p>test</p>', 1, 1, '2022-05-16 14:11:24', '2022-05-16 14:12:10'),
(5, 6, 1, 'zxsdfgh dfgh', '<p>sxdcfghjmk dfghj</p>', 1, 1, '2023-11-01 05:22:44', '2024-03-02 18:47:49'),
(6, 8, 3, 'tet', '<p>tetete</p>', 1, 1, '2024-01-24 10:20:53', '2024-03-02 18:47:45'),
(7, 8, 1, 'test', '<p>testtesttesttesttesttesttesttesttesttesttesttesttesttesttest<br></p>', 1, 1, '2024-01-29 07:26:03', '2024-03-02 18:47:40'),
(8, 9, 6, ' variable', '<p>what variavble in c</p>', 0, 1, '2024-02-01 06:12:18', '2024-03-02 18:47:35'),
(9, 9, 6, 'what is variable', '<p>what is variable<br></p>', 1, 1, '2024-02-01 06:18:16', '2024-03-02 18:47:29'),
(10, 14, 6, 'Explain the difference between ++i and i++ in C programming.', '<p><span style=\"color: rgb(236, 236, 236); font-family: SÃ¶hne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(33, 33, 33);\">Understanding the nuances of pre-increment (</span><code style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(236, 236, 236); font-weight: 600; white-space-collapse: preserve; background-color: rgb(33, 33, 33); font-family: \"SÃ¶hne Mono\", Monaco, \"Andale Mono\", \"Ubuntu Mono\", monospace !important;\">++i</code><span style=\"color: rgb(236, 236, 236); font-family: SÃ¶hne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(33, 33, 33);\">) and post-increment (</span><code style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(236, 236, 236); font-weight: 600; white-space-collapse: preserve; background-color: rgb(33, 33, 33); font-family: \"SÃ¶hne Mono\", Monaco, \"Andale Mono\", \"Ubuntu Mono\", monospace !important;\">i++</code><span style=\"color: rgb(236, 236, 236); font-family: SÃ¶hne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(33, 33, 33);\">) operators is fundamental in C programming. Your response should cover the impact on the value of </span><code style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(236, 236, 236); font-weight: 600; white-space-collapse: preserve; background-color: rgb(33, 33, 33); font-family: \"SÃ¶hne Mono\", Monaco, \"Andale Mono\", \"Ubuntu Mono\", monospace !important;\">i</code><span style=\"color: rgb(236, 236, 236); font-family: SÃ¶hne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(33, 33, 33);\"> and the order of evaluation.</span><br></p>', 1, 0, '2024-03-02 18:56:44', '2024-03-02 18:57:27'),
(11, 14, 4, 'Describe the differences between == and === in JavaScript.', '<p><span style=\"color: rgb(236, 236, 236); font-family: SÃ¶hne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(33, 33, 33);\">JavaScript\'s loose and strict equality operators (</span><code style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(236, 236, 236); font-weight: 600; white-space-collapse: preserve; background-color: rgb(33, 33, 33); font-family: \"SÃ¶hne Mono\", Monaco, \"Andale Mono\", \"Ubuntu Mono\", monospace !important;\">==</code><span style=\"color: rgb(236, 236, 236); font-family: SÃ¶hne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(33, 33, 33);\"> and </span><code style=\"border: 0px solid rgb(227, 227, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; color: rgb(236, 236, 236); font-weight: 600; white-space-collapse: preserve; background-color: rgb(33, 33, 33); font-family: \"SÃ¶hne Mono\", Monaco, \"Andale Mono\", \"Ubuntu Mono\", monospace !important;\">===</code><span style=\"color: rgb(236, 236, 236); font-family: SÃ¶hne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(33, 33, 33);\">) behave differently when comparing values. Elaborate on how they handle type coercion and data type comparisons, along with situations where one should be preferred over the other.</span><br></p>', 1, 0, '2024-03-02 19:00:54', '2024-03-02 19:03:22'),
(14, 14, 1, 'Explain the concept of sessions in PHP and how they are managed.', '<p><span style=\"color: rgb(236, 236, 236); font-family: SÃ¶hne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(33, 33, 33);\">Sessions play a crucial role in web development with PHP, enabling the persistence of data across multiple page requests for a user. Discuss how sessions work, how they are initiated, and the mechanisms for storing and retrieving session data.</span><br></p>', 1, 0, '2024-03-02 19:01:31', '2024-03-02 19:03:03'),
(15, 14, 3, ' What is the key difference between list and tuple data types in Python?', '<p><span style=\"color: rgb(236, 236, 236); font-family: SÃ¶hne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve; background-color: rgb(33, 33, 33);\"> Both lists and tuples are sequence data types in Python, but they have distinct characteristics. Describe the primary difference between them, focusing on aspects like mutability, syntax, and typical use cases in Python programming.</span><br></p>', 1, 0, '2024-03-02 19:02:00', '2024-03-02 19:02:51'),
(16, 14, 3, 'what is constructor in python', '<p>what is constructor in python.what is constructor in python.what is constructor in python<br></p>', 1, 0, '2024-03-14 13:22:07', '2024-03-14 13:22:29'),
(17, 1, 4, 'test', '<p>testetstset</p>', 1, 1, '2024-03-15 05:28:21', '2024-03-16 05:06:06'),
(18, 14, 6, 'what is ai', '', 1, 0, '2024-03-15 06:32:30', '2024-03-15 06:35:18'),
(19, 19, 3, 'Vkrkrf', '', 1, 1, '2024-03-15 07:00:32', '2024-03-16 05:06:01'),
(20, 14, 6, 'what is variable in c', '', 1, 0, '2024-03-19 06:21:44', '2024-03-19 06:22:39'),
(21, 14, 4, 'Explain the difference between ++i and i++ in C programming.', '', 1, 0, '2024-03-19 07:18:44', '2024-03-19 07:19:13'),
(22, 20, 3, 'xyz', '<p>demo content</p>', 1, 0, '2024-04-06 05:51:36', '2024-04-06 05:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Discussion Forum Site'),
(6, 'short_name', 'ODFS'),
(11, 'logo', 'uploads/logo.png?v=1652665183'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1652665183');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='2';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', '', 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2024-01-24 10:23:06'),
(4, 'Mark', 'D', 'Cooper', 'mcooper', 'c7162ff89c647f444fcaa5c635dac8c3', 'uploads/avatars/4.png?v=1652667135', NULL, 2, '2022-05-16 10:12:15', '2022-05-16 13:44:49'),
(5, 'John', 'D', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 2, '2022-05-16 14:19:03', '2022-05-16 14:19:03'),
(6, 'shivani', 's', 'shah', 'shivani123', '16a729caaab66c55e6800ab111f32ed4', NULL, NULL, 2, '2023-11-01 05:19:43', '2023-11-01 05:19:43'),
(8, 'Sandesh', 'sandesh', 'Sandesh', 's@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/avatars/8.png?v=1706091609', NULL, 2, '2024-01-24 10:20:09', '2024-01-24 10:20:09'),
(9, 'nikhil', 'sunil', 'bhor', 'nikhilbhor201@gmail.com', 'd266a703f5ac79597c6a27c896d4a70d', NULL, NULL, 2, '2024-02-01 04:50:09', '2024-02-01 04:50:09'),
(10, 'dnyane ', 'Santosh', 'badhe', 'dnyaneshbadhe01@gmail.com', '4b3a3c7b733b7fff1b5acb488cd3d18a', NULL, NULL, 2, '2024-02-17 14:15:29', '2024-02-17 14:15:29'),
(11, 'Rushikesh ', 'Gajanan', 'Patil', 'Rushi', 'ce25f6dc380a3053e5ff64018b9dc57a', NULL, NULL, 2, '2024-02-17 14:20:27', '2024-02-17 14:20:27'),
(12, 'harshal', 'sunil', 'Bhor', 'nikhilbhor207@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, 2, '2024-02-27 17:02:58', '2024-02-27 17:02:58'),
(13, 'Harsh ', 'Kumar ', 'Kushwaha ', 'harshkushwahakk@gmail.com', '4f97323973544b0cbf43e98cead5af53', NULL, NULL, 2, '2024-02-28 14:21:27', '2024-02-28 14:21:27'),
(14, 'harshal', 'sunil', 'bhor', 'harshal', '202cb962ac59075b964b07152d234b70', NULL, NULL, 2, '2024-03-02 18:53:08', '2024-03-02 18:53:08'),
(15, 'sandesh', 'R', 'shinde', 'Sandesh444', '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, 2, '2024-03-12 04:55:45', '2024-03-19 16:29:36'),
(16, 'p', 'p', 'p', 'p', 'e807f1fcf82d132f9bb018ca6738a19f', NULL, NULL, 2, '2024-03-12 07:48:58', '2024-03-12 07:48:58'),
(17, 'Darshan', 'Sukdev ', 'Dighole', 'darshan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 1, '2024-03-14 13:27:32', '2024-04-06 05:47:02'),
(18, 'gfc', 'yit', 'hgvty', 'sakshi', '202cb962ac59075b964b07152d234b70', NULL, NULL, 1, '2024-03-15 06:38:37', '2024-03-15 06:38:37'),
(19, 'Deva', 'Sukdev', 'Doghole', 'Deva@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, 2, '2024-03-15 06:58:29', '2024-03-15 06:58:29'),
(20, 's', 's', 's', 's', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/avatars/20.png?v=1712382628', NULL, 2, '2024-04-06 05:50:28', '2024-04-06 05:50:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_list`
--
ALTER TABLE `comment_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `post_list`
--
ALTER TABLE `post_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comment_list`
--
ALTER TABLE `comment_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post_list`
--
ALTER TABLE `post_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_list`
--
ALTER TABLE `comment_list`
  ADD CONSTRAINT `post_id_fk_cl` FOREIGN KEY (`post_id`) REFERENCES `post_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_fk_cl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `post_list`
--
ALTER TABLE `post_list`
  ADD CONSTRAINT `category_id_fk_tl` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_fk_tl` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
