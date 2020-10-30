-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2020 at 10:31 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portoJohn`
--

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE `core_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'model_def_strapi::core-store', '{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}', 'object', NULL, NULL),
(2, 'model_def_strapi::webhooks', '{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}', 'object', NULL, NULL),
(3, 'model_def_strapi::permission', '{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}', 'object', NULL, NULL),
(4, 'model_def_strapi::role', '{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}', 'object', NULL, NULL),
(5, 'model_def_strapi::user', '{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}}', 'object', NULL, NULL),
(6, 'model_def_plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(7, 'model_def_plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(8, 'model_def_plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(9, 'model_def_plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(10, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]}}', 'object', '', ''),
(11, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(12, 'plugin_content_manager_configuration_content_types::strapi::permission', '{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"created_at\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', '', ''),
(13, 'plugin_content_manager_configuration_content_types::strapi::role', '{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', '', ''),
(14, 'plugin_content_manager_configuration_content_types::strapi::user', '{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(15, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', ''),
(16, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', ''),
(17, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', ''),
(18, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', '', ''),
(21, 'model_def_application::work.work', '{\"uid\":\"application::work.work\",\"collectionName\":\"works\",\"kind\":\"collectionType\",\"info\":{\"name\":\"work\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"workName\":{\"type\":\"string\"},\"workDate\":{\"type\":\"datetime\"},\"workDescription\":{\"type\":\"richtext\"},\"workImage\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"workGallery\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"workCat\":{\"collection\":\"work\",\"via\":\"works\",\"dominant\":true,\"attribute\":\"workCat\",\"column\":\"id\",\"isVirtual\":true},\"works\":{\"collection\":\"work\",\"via\":\"workCat\",\"attribute\":\"work\",\"column\":\"id\",\"isVirtual\":true},\"work_cats\":{\"via\":\"works\",\"collection\":\"work-cat\",\"attribute\":\"work-cat\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_content_types::application::work.work', '{\"uid\":\"application::work.work\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"workName\",\"defaultSortBy\":\"workName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"workName\":{\"edit\":{\"label\":\"WorkName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"WorkName\",\"searchable\":true,\"sortable\":true}},\"workDate\":{\"edit\":{\"label\":\"WorkDate\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"WorkDate\",\"searchable\":true,\"sortable\":true}},\"workDescription\":{\"edit\":{\"label\":\"WorkDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"WorkDescription\",\"searchable\":false,\"sortable\":false}},\"workImage\":{\"edit\":{\"label\":\"WorkImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"WorkImage\",\"searchable\":false,\"sortable\":false}},\"workGallery\":{\"edit\":{\"label\":\"WorkGallery\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"WorkGallery\",\"searchable\":false,\"sortable\":false}},\"workCat\":{\"edit\":{\"label\":\"WorkCat\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"workName\"},\"list\":{\"label\":\"WorkCat\",\"searchable\":false,\"sortable\":false}},\"works\":{\"edit\":{\"label\":\"Works\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"workName\"},\"list\":{\"label\":\"Works\",\"searchable\":false,\"sortable\":false}},\"work_cats\":{\"edit\":{\"label\":\"Work_cats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"workCatName\"},\"list\":{\"label\":\"Work_cats\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"workName\",\"workDate\",\"workImage\"],\"edit\":[[{\"name\":\"workName\",\"size\":6},{\"name\":\"workDate\",\"size\":6}],[{\"name\":\"workDescription\",\"size\":12}],[{\"name\":\"workImage\",\"size\":6},{\"name\":\"workGallery\",\"size\":6}]],\"editRelations\":[\"workCat\",\"works\",\"work_cats\"]}}', 'object', '', ''),
(23, 'model_def_application::work-cat.work-cat', '{\"uid\":\"application::work-cat.work-cat\",\"collectionName\":\"work_cats\",\"kind\":\"collectionType\",\"info\":{\"name\":\"workCat\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"works\":{\"collection\":\"work\",\"via\":\"work_cats\",\"dominant\":true,\"attribute\":\"work\",\"column\":\"id\",\"isVirtual\":true},\"workCatName\":{\"type\":\"string\"},\"workCatImage\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"workCatDescription\":{\"type\":\"richtext\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::application::work-cat.work-cat', '{\"uid\":\"application::work-cat.work-cat\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"workCatName\",\"defaultSortBy\":\"workCatName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"works\":{\"edit\":{\"label\":\"Works\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"workName\"},\"list\":{\"label\":\"Works\",\"searchable\":false,\"sortable\":false}},\"workCatName\":{\"edit\":{\"label\":\"WorkCatName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"WorkCatName\",\"searchable\":true,\"sortable\":true}},\"workCatImage\":{\"edit\":{\"label\":\"WorkCatImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"WorkCatImage\",\"searchable\":false,\"sortable\":false}},\"workCatDescription\":{\"edit\":{\"label\":\"WorkCatDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"WorkCatDescription\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"workCatName\",\"workCatImage\",\"published_at\"],\"editRelations\":[\"works\"],\"edit\":[[{\"name\":\"workCatName\",\"size\":6},{\"name\":\"workCatImage\",\"size\":6}],[{\"name\":\"workCatDescription\",\"size\":12}]]}}', 'object', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_administrator`
--

CREATE TABLE `strapi_administrator` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`) VALUES
(1, 'jonathan', 'moguillansky', NULL, 'anguru@gmail.com', '$2a$10$vgtt7fIr.KWF8C4u0/V5GeDrrWBfjeAzx/7pIa9dvT4fFnLC/Ooz.', NULL, NULL, 1, NULL),
(2, 'guest', 'guest', NULL, 'info@kodo.press', NULL, NULL, '77d60481b6b03c5034cb2cfad75aa1f4be85ddbc', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_permission`
--

CREATE TABLE `strapi_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext DEFAULT NULL,
  `conditions` longtext DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_permission`
--

INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `fields`, `conditions`, `role`, `created_at`, `updated_at`) VALUES
(1, 'plugins::upload.read', NULL, NULL, '[]', 2, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(2, 'plugins::upload.assets.create', NULL, NULL, '[]', 2, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(3, 'plugins::upload.assets.update', NULL, NULL, '[]', 2, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(4, 'plugins::upload.assets.download', NULL, NULL, '[]', 2, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(5, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 2, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(6, 'plugins::upload.read', NULL, NULL, '[\"admin::is-creator\"]', 3, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(7, 'plugins::upload.assets.create', NULL, NULL, '[]', 3, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(8, 'plugins::upload.assets.update', NULL, NULL, '[\"admin::is-creator\"]', 3, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(9, 'plugins::upload.assets.download', NULL, NULL, '[]', 3, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(10, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 3, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(11, 'plugins::content-manager.explorer.create', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(12, 'plugins::content-manager.explorer.read', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(13, 'plugins::content-manager.explorer.update', 'plugins::users-permissions.user', '[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]', '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(14, 'plugins::content-manager.explorer.delete', 'plugins::users-permissions.user', NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(15, 'plugins::content-type-builder.read', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(16, 'plugins::upload.read', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(17, 'plugins::upload.assets.create', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(18, 'plugins::upload.assets.update', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(19, 'plugins::upload.assets.download', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(20, 'plugins::upload.assets.copy-link', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(21, 'plugins::upload.settings.read', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(22, 'plugins::content-manager.single-types.configure-view', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(23, 'plugins::content-manager.collection-types.configure-view', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(24, 'plugins::content-manager.components.configure-layout', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(25, 'plugins::users-permissions.roles.create', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(26, 'plugins::users-permissions.roles.read', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(27, 'plugins::users-permissions.roles.update', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(28, 'plugins::users-permissions.roles.delete', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(29, 'plugins::users-permissions.providers.read', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(30, 'plugins::users-permissions.providers.update', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(31, 'plugins::users-permissions.email-templates.read', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(32, 'plugins::users-permissions.email-templates.update', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:39'),
(33, 'plugins::users-permissions.advanced-settings.read', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:39'),
(34, 'plugins::users-permissions.advanced-settings.update', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:39'),
(35, 'admin::marketplace.read', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:39'),
(36, 'admin::marketplace.plugins.install', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:39'),
(37, 'admin::marketplace.plugins.uninstall', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:39'),
(38, 'admin::webhooks.create', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:39'),
(39, 'admin::webhooks.read', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:39'),
(40, 'admin::webhooks.update', NULL, NULL, '[]', 1, '2020-10-26 06:45:38', '2020-10-26 06:45:39'),
(41, 'admin::webhooks.delete', NULL, NULL, '[]', 1, '2020-10-26 06:45:39', '2020-10-26 06:45:39'),
(42, 'admin::users.create', NULL, NULL, '[]', 1, '2020-10-26 06:45:39', '2020-10-26 06:45:39'),
(43, 'admin::users.read', NULL, NULL, '[]', 1, '2020-10-26 06:45:39', '2020-10-26 06:45:39'),
(44, 'admin::users.update', NULL, NULL, '[]', 1, '2020-10-26 06:45:39', '2020-10-26 06:45:39'),
(45, 'admin::users.delete', NULL, NULL, '[]', 1, '2020-10-26 06:45:39', '2020-10-26 06:45:39'),
(46, 'admin::roles.create', NULL, NULL, '[]', 1, '2020-10-26 06:45:39', '2020-10-26 06:45:39'),
(47, 'admin::roles.read', NULL, NULL, '[]', 1, '2020-10-26 06:45:39', '2020-10-26 06:45:39'),
(48, 'admin::roles.update', NULL, NULL, '[]', 1, '2020-10-26 06:45:39', '2020-10-26 06:45:39'),
(49, 'admin::roles.delete', NULL, NULL, '[]', 1, '2020-10-26 06:45:39', '2020-10-26 06:45:39'),
(53, 'plugins::content-manager.explorer.delete', 'application::work.work', NULL, '[]', 1, '2020-10-26 06:50:34', '2020-10-26 06:50:34'),
(54, 'plugins::content-manager.explorer.publish', 'application::work.work', NULL, '[]', 1, '2020-10-26 06:50:34', '2020-10-26 06:50:34'),
(58, 'plugins::content-manager.explorer.create', 'application::work-cat.work-cat', '[\"works\",\"workCatName\",\"workCatImage\",\"workCatDescription\"]', '[]', 1, '2020-10-26 06:53:40', '2020-10-26 06:53:41'),
(59, 'plugins::content-manager.explorer.create', 'application::work.work', '[\"workName\",\"workDate\",\"workDescription\",\"workImage\",\"workGallery\",\"workCat\",\"works\",\"work_cats\"]', '[]', 1, '2020-10-26 06:53:40', '2020-10-26 06:53:41'),
(60, 'plugins::content-manager.explorer.read', 'application::work-cat.work-cat', '[\"works\",\"workCatName\",\"workCatImage\",\"workCatDescription\"]', '[]', 1, '2020-10-26 06:53:40', '2020-10-26 06:53:41'),
(61, 'plugins::content-manager.explorer.read', 'application::work.work', '[\"workName\",\"workDate\",\"workDescription\",\"workImage\",\"workGallery\",\"workCat\",\"works\",\"work_cats\"]', '[]', 1, '2020-10-26 06:53:40', '2020-10-26 06:53:41'),
(62, 'plugins::content-manager.explorer.update', 'application::work-cat.work-cat', '[\"works\",\"workCatName\",\"workCatImage\",\"workCatDescription\"]', '[]', 1, '2020-10-26 06:53:40', '2020-10-26 06:53:41'),
(63, 'plugins::content-manager.explorer.update', 'application::work.work', '[\"workName\",\"workDate\",\"workDescription\",\"workImage\",\"workGallery\",\"workCat\",\"works\",\"work_cats\"]', '[]', 1, '2020-10-26 06:53:40', '2020-10-26 06:53:41'),
(64, 'plugins::content-manager.explorer.delete', 'application::work-cat.work-cat', NULL, '[]', 1, '2020-10-26 06:53:40', '2020-10-26 06:53:41'),
(65, 'plugins::content-manager.explorer.publish', 'application::work-cat.work-cat', NULL, '[]', 1, '2020-10-26 06:53:40', '2020-10-26 06:53:41'),
(66, 'plugins::content-manager.explorer.create', 'application::work-cat.work-cat', '[\"workCatDescription\",\"workCatImage\",\"workCatName\",\"works\"]', '[\"admin::is-creator\"]', 3, '2020-10-26 06:59:34', '2020-10-26 06:59:34'),
(67, 'plugins::content-manager.explorer.read', 'application::work-cat.work-cat', '[\"workCatDescription\",\"workCatImage\",\"workCatName\",\"works\"]', '[\"admin::is-creator\"]', 3, '2020-10-26 06:59:34', '2020-10-26 06:59:34'),
(68, 'plugins::content-manager.explorer.update', 'application::work-cat.work-cat', '[\"workCatDescription\",\"workCatImage\",\"workCatName\",\"works\"]', '[\"admin::is-creator\"]', 3, '2020-10-26 06:59:34', '2020-10-26 06:59:34'),
(69, 'plugins::content-manager.explorer.delete', 'application::work-cat.work-cat', NULL, '[\"admin::is-creator\"]', 3, '2020-10-26 06:59:34', '2020-10-26 06:59:34'),
(70, 'plugins::content-manager.explorer.create', 'application::work.work', '[\"workCat\",\"workDate\",\"workDescription\",\"workGallery\",\"workImage\",\"workName\",\"work_cats\",\"works\"]', '[\"admin::is-creator\"]', 3, '2020-10-26 06:59:34', '2020-10-26 06:59:34'),
(71, 'plugins::content-manager.explorer.read', 'application::work.work', '[\"workCat\",\"workDate\",\"workDescription\",\"workGallery\",\"workImage\",\"workName\",\"work_cats\",\"works\"]', '[\"admin::is-creator\"]', 3, '2020-10-26 06:59:34', '2020-10-26 06:59:34'),
(72, 'plugins::content-manager.explorer.update', 'application::work.work', '[\"workCat\",\"workDate\",\"workDescription\",\"workGallery\",\"workImage\",\"workName\",\"work_cats\",\"works\"]', '[\"admin::is-creator\"]', 3, '2020-10-26 06:59:34', '2020-10-26 06:59:34'),
(73, 'plugins::content-manager.explorer.delete', 'application::work.work', NULL, '[\"admin::is-creator\"]', 3, '2020-10-26 06:59:34', '2020-10-26 06:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_role`
--

CREATE TABLE `strapi_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_role`
--

INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2020-10-26 06:45:38', '2020-10-26 06:45:38'),
(3, 'guest', 'strapi-author', 'Authors can manage the content they have created.', '2020-10-26 06:45:38', '2020-10-26 06:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_users_roles`
--

CREATE TABLE `strapi_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_users_roles`
--

INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload_file`
--

INSERT INTO `upload_file` (`id`, `name`, `alternativeText`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `previewUrl`, `provider`, `provider_metadata`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'preview.jpg', '', '', 1920, 1080, '{\"thumbnail\":{\"name\":\"thumbnail_preview.jpg\",\"hash\":\"thumbnail_preview_fb1cdecf51\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":138,\"size\":6.3,\"path\":null,\"url\":\"/uploads/thumbnail_preview_fb1cdecf51.jpg\"},\"large\":{\"name\":\"large_preview.jpg\",\"hash\":\"large_preview_fb1cdecf51\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":563,\"size\":51.9,\"path\":null,\"url\":\"/uploads/large_preview_fb1cdecf51.jpg\"},\"medium\":{\"name\":\"medium_preview.jpg\",\"hash\":\"medium_preview_fb1cdecf51\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":422,\"size\":33.57,\"path\":null,\"url\":\"/uploads/medium_preview_fb1cdecf51.jpg\"},\"small\":{\"name\":\"small_preview.jpg\",\"hash\":\"small_preview_fb1cdecf51\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":281,\"size\":18.06,\"path\":null,\"url\":\"/uploads/small_preview_fb1cdecf51.jpg\"}}', 'preview_fb1cdecf51', '.jpg', 'image/jpeg', '129.87', '/uploads/preview_fb1cdecf51.jpg', NULL, 'local', NULL, 1, 1, '2020-10-26 06:54:13', '2020-10-26 06:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(10) UNSIGNED NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload_file_morph`
--

INSERT INTO `upload_file_morph` (`id`, `upload_file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(2, 1, 1, 'works', 'workImage', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
(1, 'content-manager', 'components', 'findcomponent', 0, '', 1, NULL, NULL),
(2, 'content-manager', 'components', 'findcomponent', 0, '', 2, NULL, NULL),
(3, 'content-manager', 'components', 'listcomponents', 0, '', 1, NULL, NULL),
(4, 'content-manager', 'components', 'listcomponents', 0, '', 2, NULL, NULL),
(5, 'content-manager', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
(6, 'content-manager', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
(7, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 1, NULL, NULL),
(8, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 2, NULL, NULL),
(9, 'content-manager', 'contentmanager', 'count', 0, '', 1, NULL, NULL),
(10, 'content-manager', 'contentmanager', 'count', 0, '', 2, NULL, NULL),
(11, 'content-manager', 'contentmanager', 'create', 0, '', 1, NULL, NULL),
(12, 'content-manager', 'contentmanager', 'create', 0, '', 2, NULL, NULL),
(13, 'content-manager', 'contentmanager', 'delete', 0, '', 1, NULL, NULL),
(14, 'content-manager', 'contentmanager', 'delete', 0, '', 2, NULL, NULL),
(15, 'content-manager', 'contentmanager', 'deletemany', 0, '', 1, NULL, NULL),
(16, 'content-manager', 'contentmanager', 'deletemany', 0, '', 2, NULL, NULL),
(17, 'content-manager', 'contentmanager', 'find', 0, '', 1, NULL, NULL),
(18, 'content-manager', 'contentmanager', 'find', 0, '', 2, NULL, NULL),
(19, 'content-manager', 'contentmanager', 'findone', 0, '', 1, NULL, NULL),
(20, 'content-manager', 'contentmanager', 'findone', 0, '', 2, NULL, NULL),
(21, 'content-manager', 'contentmanager', 'findrelationlist', 0, '', 1, NULL, NULL),
(22, 'content-manager', 'contentmanager', 'findrelationlist', 0, '', 2, NULL, NULL),
(23, 'content-manager', 'contentmanager', 'generateuid', 0, '', 1, NULL, NULL),
(24, 'content-manager', 'contentmanager', 'generateuid', 0, '', 2, NULL, NULL),
(25, 'content-manager', 'contentmanager', 'publish', 0, '', 1, NULL, NULL),
(26, 'content-manager', 'contentmanager', 'publish', 0, '', 2, NULL, NULL),
(27, 'content-manager', 'contentmanager', 'unpublish', 0, '', 1, NULL, NULL),
(28, 'content-manager', 'contentmanager', 'unpublish', 0, '', 2, NULL, NULL),
(29, 'content-manager', 'contentmanager', 'update', 0, '', 1, NULL, NULL),
(30, 'content-manager', 'contentmanager', 'update', 0, '', 2, NULL, NULL),
(31, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 1, NULL, NULL),
(32, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 2, NULL, NULL),
(33, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 1, NULL, NULL),
(34, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 2, NULL, NULL),
(35, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
(36, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
(37, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1, NULL, NULL),
(38, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2, NULL, NULL),
(39, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1, NULL, NULL),
(40, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2, NULL, NULL),
(41, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1, NULL, NULL),
(42, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2, NULL, NULL),
(43, 'content-type-builder', 'components', 'createcomponent', 0, '', 1, NULL, NULL),
(44, 'content-type-builder', 'components', 'createcomponent', 0, '', 2, NULL, NULL),
(45, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1, NULL, NULL),
(46, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2, NULL, NULL),
(47, 'content-type-builder', 'components', 'getcomponent', 0, '', 1, NULL, NULL),
(48, 'content-type-builder', 'components', 'getcomponent', 0, '', 2, NULL, NULL),
(49, 'content-type-builder', 'components', 'getcomponents', 0, '', 1, NULL, NULL),
(50, 'content-type-builder', 'components', 'getcomponents', 0, '', 2, NULL, NULL),
(51, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1, NULL, NULL),
(52, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2, NULL, NULL),
(53, 'content-type-builder', 'connections', 'getconnections', 0, '', 1, NULL, NULL),
(54, 'content-type-builder', 'connections', 'getconnections', 0, '', 2, NULL, NULL),
(55, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1, NULL, NULL),
(56, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2, NULL, NULL),
(57, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1, NULL, NULL),
(58, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2, NULL, NULL),
(59, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1, NULL, NULL),
(60, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2, NULL, NULL),
(61, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1, NULL, NULL),
(62, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2, NULL, NULL),
(63, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1, NULL, NULL),
(64, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2, NULL, NULL),
(65, 'email', 'email', 'send', 0, '', 1, NULL, NULL),
(66, 'email', 'email', 'send', 0, '', 2, NULL, NULL),
(67, 'upload', 'upload', 'count', 0, '', 1, NULL, NULL),
(68, 'upload', 'upload', 'count', 0, '', 2, NULL, NULL),
(69, 'upload', 'upload', 'destroy', 0, '', 1, NULL, NULL),
(70, 'upload', 'upload', 'destroy', 0, '', 2, NULL, NULL),
(71, 'upload', 'upload', 'find', 0, '', 1, NULL, NULL),
(72, 'upload', 'upload', 'find', 0, '', 2, NULL, NULL),
(73, 'upload', 'upload', 'findone', 0, '', 1, NULL, NULL),
(74, 'upload', 'upload', 'findone', 0, '', 2, NULL, NULL),
(75, 'upload', 'upload', 'getsettings', 0, '', 1, NULL, NULL),
(76, 'upload', 'upload', 'getsettings', 0, '', 2, NULL, NULL),
(77, 'upload', 'upload', 'search', 0, '', 1, NULL, NULL),
(78, 'upload', 'upload', 'search', 0, '', 2, NULL, NULL),
(79, 'upload', 'upload', 'updatesettings', 0, '', 1, NULL, NULL),
(80, 'upload', 'upload', 'updatesettings', 0, '', 2, NULL, NULL),
(81, 'upload', 'upload', 'upload', 0, '', 1, NULL, NULL),
(82, 'upload', 'upload', 'upload', 0, '', 2, NULL, NULL),
(83, 'users-permissions', 'auth', 'callback', 0, '', 1, NULL, NULL),
(84, 'users-permissions', 'auth', 'callback', 1, '', 2, NULL, NULL),
(85, 'users-permissions', 'auth', 'connect', 1, '', 1, NULL, NULL),
(86, 'users-permissions', 'auth', 'connect', 1, '', 2, NULL, NULL),
(87, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1, NULL, NULL),
(88, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2, NULL, NULL),
(89, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1, NULL, NULL),
(90, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2, NULL, NULL),
(91, 'users-permissions', 'auth', 'register', 0, '', 1, NULL, NULL),
(92, 'users-permissions', 'auth', 'register', 1, '', 2, NULL, NULL),
(93, 'users-permissions', 'auth', 'resetpassword', 0, '', 1, NULL, NULL),
(94, 'users-permissions', 'auth', 'resetpassword', 1, '', 2, NULL, NULL),
(95, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1, NULL, NULL),
(96, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2, NULL, NULL),
(97, 'users-permissions', 'user', 'count', 0, '', 1, NULL, NULL),
(98, 'users-permissions', 'user', 'count', 0, '', 2, NULL, NULL),
(99, 'users-permissions', 'user', 'create', 0, '', 1, NULL, NULL),
(100, 'users-permissions', 'user', 'create', 0, '', 2, NULL, NULL),
(101, 'users-permissions', 'user', 'destroy', 0, '', 1, NULL, NULL),
(102, 'users-permissions', 'user', 'destroy', 0, '', 2, NULL, NULL),
(103, 'users-permissions', 'user', 'destroyall', 0, '', 1, NULL, NULL),
(104, 'users-permissions', 'user', 'destroyall', 0, '', 2, NULL, NULL),
(105, 'users-permissions', 'user', 'find', 0, '', 1, NULL, NULL),
(106, 'users-permissions', 'user', 'find', 0, '', 2, NULL, NULL),
(107, 'users-permissions', 'user', 'findone', 0, '', 1, NULL, NULL),
(108, 'users-permissions', 'user', 'findone', 0, '', 2, NULL, NULL),
(109, 'users-permissions', 'user', 'me', 1, '', 1, NULL, NULL),
(110, 'users-permissions', 'user', 'me', 1, '', 2, NULL, NULL),
(111, 'users-permissions', 'user', 'update', 0, '', 1, NULL, NULL),
(112, 'users-permissions', 'user', 'update', 0, '', 2, NULL, NULL),
(113, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1, NULL, NULL),
(114, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2, NULL, NULL),
(115, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1, NULL, NULL),
(116, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2, NULL, NULL),
(117, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1, NULL, NULL),
(118, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2, NULL, NULL),
(119, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1, NULL, NULL),
(120, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2, NULL, NULL),
(121, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1, NULL, NULL),
(122, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2, NULL, NULL),
(123, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1, NULL, NULL),
(124, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2, NULL, NULL),
(125, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1, NULL, NULL),
(126, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2, NULL, NULL),
(127, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1, NULL, NULL),
(128, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2, NULL, NULL),
(129, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1, NULL, NULL),
(130, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2, NULL, NULL),
(131, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1, NULL, NULL),
(132, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2, NULL, NULL),
(133, 'users-permissions', 'userspermissions', 'index', 0, '', 1, NULL, NULL),
(134, 'users-permissions', 'userspermissions', 'index', 0, '', 2, NULL, NULL),
(135, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1, NULL, NULL),
(136, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2, NULL, NULL),
(137, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1, NULL, NULL),
(138, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2, NULL, NULL),
(139, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1, NULL, NULL),
(140, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2, NULL, NULL),
(141, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1, NULL, NULL),
(142, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2, NULL, NULL),
(143, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1, NULL, NULL),
(144, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2, NULL, NULL),
(145, 'application', 'work', 'count', 0, '', 1, NULL, NULL),
(146, 'application', 'work', 'count', 1, '', 2, NULL, NULL),
(147, 'application', 'work', 'create', 0, '', 1, NULL, NULL),
(148, 'application', 'work', 'create', 0, '', 2, NULL, NULL),
(149, 'application', 'work', 'delete', 0, '', 1, NULL, NULL),
(150, 'application', 'work', 'delete', 0, '', 2, NULL, NULL),
(151, 'application', 'work', 'find', 0, '', 1, NULL, NULL),
(152, 'application', 'work', 'find', 1, '', 2, NULL, NULL),
(153, 'application', 'work', 'findone', 0, '', 1, NULL, NULL),
(154, 'application', 'work', 'findone', 1, '', 2, NULL, NULL),
(155, 'application', 'work', 'update', 0, '', 1, NULL, NULL),
(156, 'application', 'work', 'update', 0, '', 2, NULL, NULL),
(157, 'application', 'work-cat', 'count', 0, '', 1, NULL, NULL),
(158, 'application', 'work-cat', 'count', 0, '', 2, NULL, NULL),
(159, 'application', 'work-cat', 'create', 0, '', 1, NULL, NULL),
(160, 'application', 'work-cat', 'create', 0, '', 2, NULL, NULL),
(161, 'application', 'work-cat', 'delete', 0, '', 1, NULL, NULL),
(162, 'application', 'work-cat', 'delete', 0, '', 2, NULL, NULL),
(163, 'application', 'work-cat', 'find', 0, '', 1, NULL, NULL),
(164, 'application', 'work-cat', 'find', 1, '', 2, NULL, NULL),
(165, 'application', 'work-cat', 'findone', 0, '', 1, NULL, NULL),
(166, 'application', 'work-cat', 'findone', 1, '', 2, NULL, NULL),
(167, 'application', 'work-cat', 'update', 0, '', 1, NULL, NULL),
(168, 'application', 'work-cat', 'update', 0, '', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(10) UNSIGNED NOT NULL,
  `workName` varchar(255) DEFAULT NULL,
  `workDate` datetime DEFAULT NULL,
  `workDescription` longtext DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `workName`, `workDate`, `workDescription`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'test', '2020-10-18 09:00:00', 'testing 1 1 1', '2020-10-26 09:00:59', 1, 1, '2020-10-26 06:54:17', '2020-10-26 07:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `works_work_cats__works_works`
--

CREATE TABLE `works_work_cats__works_works` (
  `id` int(10) UNSIGNED NOT NULL,
  `work_id` int(11) DEFAULT NULL,
  `workCat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works_work_cats__works_works`
--

INSERT INTO `works_work_cats__works_works` (`id`, `work_id`, `workCat_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `works_work_cats__work_cats_works`
--

CREATE TABLE `works_work_cats__work_cats_works` (
  `id` int(10) UNSIGNED NOT NULL,
  `work-cat_id` int(11) DEFAULT NULL,
  `work_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works_work_cats__work_cats_works`
--

INSERT INTO `works_work_cats__work_cats_works` (`id`, `work-cat_id`, `work_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `work_cats`
--

CREATE TABLE `work_cats` (
  `id` int(10) UNSIGNED NOT NULL,
  `workCatName` varchar(255) DEFAULT NULL,
  `workCatDescription` longtext DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work_cats`
--

INSERT INTO `work_cats` (`id`, `workCatName`, `workCatDescription`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'exp', NULL, NULL, 1, 1, '2020-10-26 06:54:41', '2020-10-26 06:54:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_administrator_email_unique` (`email`);

--
-- Indexes for table `strapi_permission`
--
ALTER TABLE `strapi_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_role`
--
ALTER TABLE `strapi_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_role_name_unique` (`name`),
  ADD UNIQUE KEY `strapi_role_code_unique` (`code`);

--
-- Indexes for table `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_role_type_unique` (`type`);

--
-- Indexes for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_user_username_unique` (`username`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works_work_cats__works_works`
--
ALTER TABLE `works_work_cats__works_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works_work_cats__work_cats_works`
--
ALTER TABLE `works_work_cats__work_cats_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_cats`
--
ALTER TABLE `work_cats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `strapi_permission`
--
ALTER TABLE `strapi_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `strapi_role`
--
ALTER TABLE `strapi_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `strapi_users_roles`
--
ALTER TABLE `strapi_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `works_work_cats__works_works`
--
ALTER TABLE `works_work_cats__works_works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `works_work_cats__work_cats_works`
--
ALTER TABLE `works_work_cats__work_cats_works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work_cats`
--
ALTER TABLE `work_cats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
