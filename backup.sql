/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: nhoclahola-mariadb.cxues04wy32l.ap-southeast-2.rds.amazonaws.com    Database: social_network_v1
-- ------------------------------------------------------
-- Server version	10.11.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `chat_id` varchar(255) NOT NULL,
  `chat_image_url` varchar(255) DEFAULT NULL,
  `chat_name` varchar(255) DEFAULT NULL,
  `timestamp` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES
('chat-02680d15-6f80-4949-baa7-a0b60aa6a054',NULL,NULL,'2024-12-09 06:11:54.595447'),
('chat-278f028e-d5c1-4d4e-9f82-06e7f58726a9',NULL,NULL,'2024-09-13 02:47:26.745703'),
('chat-409baf83-cc2f-458b-813a-643f94bd11a4',NULL,NULL,'2024-09-06 10:37:25.871115'),
('chat-418ef6ba-37e8-4909-a405-22ec3133a42d',NULL,NULL,'2024-09-05 17:11:12.576314'),
('chat-4f69ea13-5ccb-483c-9530-2357f1cc931f',NULL,NULL,'2024-12-09 03:25:47.351127'),
('chat-785e8db4-cab7-40bc-9d32-fae7c240cbbf',NULL,NULL,'2024-12-11 08:30:45.674067'),
('chat-8fa05046-f366-4bf8-a572-c40e8d0320bf',NULL,NULL,'2024-09-13 02:47:03.634385'),
('chat-936fe1e0-8e31-4280-a27e-179294ca3ad8',NULL,NULL,'2024-09-06 10:46:20.964379'),
('chat-a944f1e5-5c4b-49ea-a3ab-d764ad984006',NULL,NULL,'2024-09-12 02:05:58.597003'),
('chat-c47516cb-4f77-41c3-bbf7-c853fad92ab4',NULL,NULL,'2024-09-09 08:21:09.413755'),
('chat-eb8a52ce-5ca8-459f-8cc1-0438e40c37ce',NULL,NULL,'2024-09-13 02:47:51.005048');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_request`
--

DROP TABLE IF EXISTS `chat_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_request` (
  `request_id` bigint(20) NOT NULL,
  `accepted` bit(1) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`request_id`),
  KEY `FKakfwmawg27txnyrnj7nrr0y0f` (`receiver_id`),
  KEY `FKr6196dn7ivmyqwj0baxkdbo1t` (`sender_id`),
  CONSTRAINT `FKakfwmawg27txnyrnj7nrr0y0f` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKr6196dn7ivmyqwj0baxkdbo1t` FOREIGN KEY (`sender_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_request`
--

LOCK TABLES `chat_request` WRITE;
/*!40000 ALTER TABLE `chat_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` varchar(255) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `post_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FKs1slvnkuemjsq2kj4h3vhx7i1` (`post_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`),
  CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKs1slvnkuemjsq2kj4h3vhx7i1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES
('comment-048db1e9-3831-4abf-9e10-3fc00e5015c3','ádasda','2024-12-11 07:22:47.995950','post-2df72984-ffee-44e8-8658-5f0b81f6bcef','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('comment-098b2d39-2f04-4c7e-9968-c50d2f63358e','pp','2024-12-09 07:07:29.756617','post-3af5c95d-7b4c-4a17-a426-bfb72fc2a8d0','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-0f8b98d1-33b5-4916-8be5-3eec85f84a02','abc','2024-12-09 03:44:40.379525','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-11c60695-9d70-4a9a-b0a9-5a61210dde12','đáa','2024-12-11 07:28:17.005003','post-d808cb60-2aa8-48bf-aae4-dcfc53850210','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('comment-17951ca6-b000-4648-adfb-4a620d12a116','quá hay','2024-11-28 01:20:29.645430','post-096b94ed-c629-4a5d-8f9d-d337cf817a10','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-1eedc500-0839-4000-87a5-9ed97a5ff9d0','pôppo','2024-12-09 06:25:50.281833','post-bcd5494d-0efe-4fae-a16f-a38647d6e32d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-1f2dad09-951b-433c-a916-8f31dfe99679','xzxczockzoxkczc','2024-12-09 03:45:02.190951','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-298ec021-bb07-42f4-89b3-9fc99bfcf6d9','hello','2024-12-11 08:14:19.100407','post-0b9382dd-e2bf-44a9-a79c-89dea4572f6d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-2ac294bc-211e-4fe2-b37a-cde405164840','abc','2024-12-09 03:27:22.967346','post-6e4ad0e1-be67-441c-a621-c82384a957dd','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-3e1c9667-770a-44aa-a549-b6793d782c36','Hello','2024-12-11 08:30:30.726432','post-1843858d-b1f3-43a9-bea9-ffbdc534e801','user-80aec2d4-f8e1-4863-89a3-8e52c3c8a2e9'),
('comment-445a80e0-15e0-4260-b086-411dae5d9277','Hiiro','2024-09-07 18:10:43.340082','post-fe0f1b28-0ab6-49f0-a218-9f4dbebea21e','user-852dce46-2f01-42bb-a681-1a1f56205317'),
('comment-555ba543-68da-4773-9241-081cae614f2e','abbbb','2024-12-11 07:22:42.316285','post-6c8ca57a-9a8a-42e9-871c-4730ce8c7cce','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('comment-5ea3f524-5ee0-482b-b338-4e7882779e65','😁😁😁','2024-09-06 03:46:35.359286','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('comment-607b3b9a-4668-40d0-b685-60d5f6fdd110','123231312\nádadad','2024-12-09 03:44:44.981041','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-61b53aca-99c4-4697-a60b-cc7fae1b79ff','bbbb','2024-12-11 07:28:38.666771','post-bfdf2f34-d3e8-4f88-9726-d3ca77b52bb2','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('comment-79c0d3c2-7a0c-4dd0-a6e2-d2d8976949df','hello','2024-12-11 08:21:49.401088','post-367867b9-77c9-4640-9d39-2122a1cdc32a','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-8a6d7731-c31a-44a7-9c52-0389e9e316d0','sasuke','2024-09-06 09:50:19.490468','post-096b94ed-c629-4a5d-8f9d-d337cf817a10','user-08982a5c-ab3b-4927-a73e-7e6dac27b978'),
('comment-93fca3b4-809c-4eeb-853b-7798ab651af0','😁😁\n😁😁','2024-09-06 09:41:06.609984','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-43d469f7-2366-4206-9317-dfc014a0a0ba'),
('comment-94a2cf24-90cc-42ad-8dcc-42cd3fd42546','abcdef','2024-09-07 19:06:30.716108','post-8aec2410-54e6-42b4-9d39-962260c3954a','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-a433d344-fd18-4322-8b7a-cdbb8d1e755d','hi','2024-09-09 08:28:49.411366','post-8aec2410-54e6-42b4-9d39-962260c3954a','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-a59612fb-364f-42a9-9808-05a047d350b9','agsaogkaogkaog','2024-12-09 03:44:56.579072','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-b2549bdf-4e96-4647-918c-e6be53e92672','sâcxczxc','2024-12-09 05:48:33.635215','post-1843858d-b1f3-43a9-bea9-ffbdc534e801','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-b3e7db78-f737-4314-b35a-87aadb226582','hehe','2024-09-06 09:50:11.939256','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-08982a5c-ab3b-4927-a73e-7e6dac27b978'),
('comment-dc424727-2c2b-4733-a047-a2707a6ba05c','bbbb','2024-12-11 07:28:20.631963','post-1843858d-b1f3-43a9-bea9-ffbdc534e801','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('comment-dc9e704b-77f6-4094-8f53-fb18e090a1b7','Good song','2024-09-06 03:46:17.061515','post-f65e604b-6e6e-480d-8f9d-30365a808458','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('comment-e1ec98c6-e055-4511-bac9-a27b6a13c4e0','đã hack đc đâu','2024-12-09 03:31:35.423957','post-b84c1dd6-5fad-4b8b-b43b-9f93b7912342','user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f'),
('comment-e7ec7186-0575-4d1f-a2be-93b9c611beef','đã hack đc đâu','2024-12-09 03:31:35.268399','post-b84c1dd6-5fad-4b8b-b43b-9f93b7912342','user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f'),
('comment-ec2ada3e-c7be-4051-ade0-432ebc7964f0','áplpslapdlaspdasda','2024-12-09 06:19:00.158518','post-d83d13a1-3581-4f64-8600-28e1eede7ec9','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-f08bf734-8c1b-4c6a-8678-2430044aa61e','This joke got me 😁','2024-09-05 17:28:35.391482','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-5ae65d92-aea6-429c-adad-494e3c284d10');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_liked`
--

DROP TABLE IF EXISTS `comment_liked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment_liked` (
  `comment_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  PRIMARY KEY (`comment_id`,`user_id`),
  KEY `FK57l3v72xxefj4ki51g7k7i399` (`user_id`),
  CONSTRAINT `FK57l3v72xxefj4ki51g7k7i399` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKmttj3f3d380a2armuoeoeyuyq` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_liked`
--

LOCK TABLES `comment_liked` WRITE;
/*!40000 ALTER TABLE `comment_liked` DISABLE KEYS */;
INSERT INTO `comment_liked` VALUES
('comment-79c0d3c2-7a0c-4dd0-a6e2-d2d8976949df','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-93fca3b4-809c-4eeb-853b-7798ab651af0','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-94a2cf24-90cc-42ad-8dcc-42cd3fd42546','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-a433d344-fd18-4322-8b7a-cdbb8d1e755d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-a59612fb-364f-42a9-9808-05a047d350b9','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-dc9e704b-77f6-4094-8f53-fb18e090a1b7','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-ec2ada3e-c7be-4051-ade0-432ebc7964f0','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('comment-f08bf734-8c1b-4c6a-8678-2430044aa61e','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32');
/*!40000 ALTER TABLE `comment_liked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `message_id` varchar(255) NOT NULL,
  `content` varchar(3000) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `timestamp` datetime(6) DEFAULT NULL,
  `chat_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`message_id`),
  KEY `FKmejd0ykokrbuekwwgd5a5xt8a` (`chat_id`),
  KEY `FKb3y6etti1cfougkdr0qiiemgv` (`user_id`),
  CONSTRAINT `FKb3y6etti1cfougkdr0qiiemgv` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKmejd0ykokrbuekwwgd5a5xt8a` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES
('message-01c08ab7-0e49-4407-8f8a-7eaddcf50779','Theo các bằng chứng hóa thạch, các nhà cổ sinh đã nhận ra 500 chi và hơn 1000 loài khủng long phi điểu.',NULL,'2024-09-09 02:22:34.594120','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-04562d4b-c071-42d2-9c60-7efc9b97b572','Suốt nửa đầu của thế kỷ XX, trước khi chim được xem là khủng long, hầu hết cộng đồng khoa học tin rằng khủng long là động vật chậm chạp và biến nhiệt.',NULL,'2024-09-09 02:23:25.662615','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-20bff539-ab35-4298-bcde-029615be3c51','sdada',NULL,'2024-12-09 06:12:32.176122','chat-02680d15-6f80-4949-baa7-a0b60aa6a054','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-20f0643a-f6c6-41c2-83be-2bfbdf9bca4f','Fine, thank you and you',NULL,'2024-12-11 08:31:20.876551','chat-785e8db4-cab7-40bc-9d32-fae7c240cbbf','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-329dd9ce-6721-49d7-8ac7-fc359fae0a18','1234',NULL,'2024-09-13 02:48:03.405067','chat-eb8a52ce-5ca8-459f-8cc1-0438e40c37ce','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-37c89114-5674-4238-8c5b-5c0dfe9f7c23','Hello',NULL,'2024-09-05 17:11:32.596308','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-3e623e23-a429-4d24-823a-2e16a552c1f4','Hello',NULL,'2024-12-11 08:31:05.725156','chat-785e8db4-cab7-40bc-9d32-fae7c240cbbf','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-3f2ceb30-f54b-4b24-89bb-e8b8814a10ff','Các ghi nhận hóa thạch cho thấy chim đã tiến hóa từ khủng long có lông vũ, tiến hóa từ một nhóm lớn hơn là khủng long chân thú vào thế Jura muộn, và vài loài chim đã sống sót sau sự kiện tuyệt chủng 66 triệu năm trước rồi tiếp tục phát triển đa dạng như hiện nay.',NULL,'2024-09-09 02:21:13.374002','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-43a998fc-8bc0-4c94-9376-01c43ebf70a7','123',NULL,'2024-09-13 02:47:53.726533','chat-eb8a52ce-5ca8-459f-8cc1-0438e40c37ce','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-4737dcd9-4746-44d8-b5ce-6b074575bc28','Good take',NULL,'2024-09-06 17:39:53.455706','chat-936fe1e0-8e31-4280-a27e-179294ca3ad8','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-4873dec1-4911-4d54-a473-6adeb68248c9','abc',NULL,'2024-09-14 14:36:09.578672','chat-c47516cb-4f77-41c3-bbf7-c853fad92ab4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-4fd458cd-ce82-45dc-932c-7ca0b1f99443','B',NULL,'2024-09-13 02:47:07.092674','chat-8fa05046-f366-4bf8-a572-c40e8d0320bf','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-58e37a59-3cdf-4224-8ecd-e9b45d150760',':))',NULL,'2024-12-09 03:46:51.085267','chat-4f69ea13-5ccb-483c-9530-2357f1cc931f','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-5dd17e15-7451-404b-94a3-918cc0eff5d7','uybunhnuhnuynbunbuynununyunbu',NULL,'2024-09-12 02:06:37.999370','chat-a944f1e5-5c4b-49ea-a3ab-d764ad984006','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2'),
('message-611bc5d6-8361-4222-9272-755deddf5504','sadaskasdksaoskdaosdkasosaasdasdasda',NULL,'2024-12-09 06:12:36.865887','chat-02680d15-6f80-4949-baa7-a0b60aa6a054','user-52b2c5c1-ff12-40b7-9a7a-fa167d750824'),
('message-68c56b9b-9ba7-4d2e-aa6b-43b033b59913','cscscscscsc',NULL,'2024-09-12 02:06:54.218534','chat-a944f1e5-5c4b-49ea-a3ab-d764ad984006','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2'),
('message-695737f5-14db-4401-8102-4b3aa1507775','hey you',NULL,'2024-09-12 02:06:25.452287','chat-a944f1e5-5c4b-49ea-a3ab-d764ad984006','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2'),
('message-6d24a791-afac-407e-860e-291a641d4e98','How are you',NULL,'2024-12-11 08:31:12.289635','chat-785e8db4-cab7-40bc-9d32-fae7c240cbbf','user-80aec2d4-f8e1-4863-89a3-8e52c3c8a2e9'),
('message-70e72aec-2ec5-4384-85a3-74b817d8b45b','Tyrannosaurus',NULL,'2024-09-09 02:27:13.361130','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-71885d0f-2966-421a-955c-dfc2b24db153','a',NULL,'2024-09-13 02:47:29.097586','chat-278f028e-d5c1-4d4e-9f82-06e7f58726a9','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-7403829d-eb5e-409d-bb3a-b6e3cac14f51','cccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc',NULL,'2024-09-12 02:07:02.424400','chat-a944f1e5-5c4b-49ea-a3ab-d764ad984006','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2'),
('message-7a7e359f-ff5c-4d94-8582-29326af34735','Một số ăn thực vật, số khác ăn thịt. Có bằng chứng cho thấy tất cả khủng long đều đẻ trứng, và xây tổ là một đặc điểm phụ của tất cả khủng long, cả chim lẫn phi điểu.',NULL,'2024-09-09 02:24:39.621604','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-7a93a80f-5778-4ee2-a761-f259f6da8102','k',NULL,'2024-09-13 02:47:46.328937','chat-278f028e-d5c1-4d4e-9f82-06e7f58726a9','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-7cf16b6d-7a89-4c0a-80ab-cab44f13aeca','abcc',NULL,'2024-12-09 06:12:22.001261','chat-02680d15-6f80-4949-baa7-a0b60aa6a054','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-7e08d323-f008-4d0f-ab76-cf86950b34be','hello',NULL,'2024-09-09 08:20:21.155689','chat-409baf83-cc2f-458b-813a-643f94bd11a4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-7efaca35-8494-49e3-b438-ff2035e1eb85','Hello',NULL,'2024-09-05 17:11:36.373396','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-951a92b2-a777-4741-b7ce-9bf5c1ec73c8','‎Tyrannosaurus rex',NULL,'2024-09-09 02:26:21.662258','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-9e39262c-38c4-4325-87bc-5bab8a1dfca3','abc',NULL,'2024-09-09 02:30:38.583455','chat-409baf83-cc2f-458b-813a-643f94bd11a4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-a0f97d97-450f-40bf-8669-45c950afec0e','Tổ tiên khủng long đi bằng hai chân. Tuy thế rất nhiều chi khủng long đi bằng bốn chân, và một số chi có thể thay đổi giữa 2 dạng.',NULL,'2024-09-09 02:24:58.202411','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-a3b3e5a9-2343-4f4c-aec5-32af0eb03bdf','Khủng long là một nhóm đa dạng từ phân loại sinh học, hình thái đến sinh thái. Chim, với hơn 10,000 loài còn sinh tồn, là nhóm động vật có xương sống đa dạng nhất ngoài bộ Cá vược.',NULL,'2024-09-09 02:22:17.474664','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-a703fb09-01f9-4bfb-aa2a-195c10dd85e6','hjk',NULL,'2024-09-09 08:21:17.395144','chat-c47516cb-4f77-41c3-bbf7-c853fad92ab4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-aaef1d0e-0c40-4c26-9021-bdfc9d661bf2','vui vẻ k em',NULL,'2024-12-09 03:25:58.234336','chat-4f69ea13-5ccb-483c-9530-2357f1cc931f','user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f'),
('message-acdecb21-9dec-4811-846b-da811410df8b','Khủng long là một nhóm bò sát thuộc nhánh Dinosauria, xuất hiện lần đầu vào kỷ Tam Điệp khoảng 243 - 233,23 triệu năm trước đây, mặc dù nguồn gốc chính xác và các mốc thời gian trong quá trình tiến hóa của chúng hiện vẫn đang tiếp tục được đào sâu nghiên cứu.',NULL,'2024-09-06 10:47:11.140321','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-b346d534-3025-4f1f-a548-7bdc6b0a4de6','Một số ăn thực vật, số khác ăn thịt. Có bằng chứng cho thấy tất cả khủng long đều đẻ trứng, và xây tổ là một đặc điểm phụ của tất cả khủng long, cả chim lẫn phi điểu.',NULL,'2024-09-09 02:24:36.270580','chat-936fe1e0-8e31-4280-a27e-179294ca3ad8','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-b54b01f8-ca2d-4186-af55-992b9c06ec01','hello my friend',NULL,'2024-12-09 06:11:58.242894','chat-4f69ea13-5ccb-483c-9530-2357f1cc931f','user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f'),
('message-b7434a6c-99c2-4a2b-ae5d-f8969487d399','hi',NULL,'2024-12-09 00:12:10.760282','chat-409baf83-cc2f-458b-813a-643f94bd11a4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-b992ee13-66e1-4cf1-a881-7e7c79d651e2','Edmontosaurus ',NULL,'2024-09-09 02:27:02.974933','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-bb7ab025-8341-4200-b921-54ea4ebfa311','sacsca',NULL,'2024-12-09 05:44:20.514565','chat-4f69ea13-5ccb-483c-9530-2357f1cc931f','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-c808d837-24d2-44af-b840-c1985d184798','Do đó, chim là hậu duệ duy nhất còn sót lại ngày nay của khủng long, và khủng long vẫn chưa tuyệt chủng hoàn toàn như vẫn thường được nói mà một nhánh con cháu của chúng vẫn còn tồn tại đến tận ngày nay. Khủng long vì thế có thể được chia thành hai loại là khủng long phi điểu (tức là tất cả các loại khủng long khác chim) và chim.',NULL,'2024-09-09 02:22:03.153937','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('message-c8bb704b-d865-4a9f-886b-ef55b90d20da','xin chào',NULL,'2024-09-12 02:06:08.083229','chat-a944f1e5-5c4b-49ea-a3ab-d764ad984006','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2'),
('message-c98b75c4-ad37-4f55-8564-0dc3094fe059','ddfdf',NULL,'2024-09-09 08:20:30.793534','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-cd8734c9-9538-42e4-971b-98699c63db07','hi',NULL,'2024-12-09 00:12:21.720587','chat-409baf83-cc2f-458b-813a-643f94bd11a4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-dea8c68f-e4df-470e-85e4-084227bd2a91','Ornithischia',NULL,'2024-09-09 02:26:56.359992','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-e913d2fd-ac6f-4b2c-88d3-7479fe351190','Tuy nhiên hầu hết các nghiên cứu những năm 1970 đã chỉ ra rằng khủng long là động vật hoạt động tích cực với khả năng trao đổi chất cao và thích nghi tốt cho quan hệ xã hội.',NULL,'2024-09-09 02:24:25.342396','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('message-fd4ce7c1-16da-4633-9b79-966d5a7ad5f1','Khủng long có mặt ở khắp các châu lục, qua những loài hiện còn (chim) cũng như những hóa thạch còn sót lại.',NULL,'2024-09-09 02:22:47.332416','chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `notification_id` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `is_read` bit(1) NOT NULL,
  `notification_type` enum('COMMENT','LIKE') NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `trigger_user_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `FKn1l10g2mvj4r1qs93k952fshe` (`post_id`),
  KEY `FKnku8rxo0ajxu8q1xn7db9g48f` (`trigger_user_id`),
  KEY `FKb0yvoep4h4k92ipon31wmdf7e` (`user_id`),
  CONSTRAINT `FKb0yvoep4h4k92ipon31wmdf7e` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKn1l10g2mvj4r1qs93k952fshe` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  CONSTRAINT `FKnku8rxo0ajxu8q1xn7db9g48f` FOREIGN KEY (`trigger_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES
('notification-017bf9ea-7872-464e-a507-e7a8eee101ed','2024-09-06 03:36:39.066238','\0','LIKE','post-096b94ed-c629-4a5d-8f9d-d337cf817a10','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('notification-044d5dec-6984-4c5b-a8cf-f874297b8caf','2024-09-07 17:53:19.218783','\0','LIKE','post-fe0f1b28-0ab6-49f0-a218-9f4dbebea21e','user-e531cf52-e051-452a-8862-677c81595373','user-e531cf52-e051-452a-8862-677c81595373'),
('notification-05745739-4ae8-487b-850a-02d9beedd189','2024-09-11 12:37:46.918945','\0','LIKE','post-3fc53a7c-f1e3-44ba-b1be-ec21b61f9eb9','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-05afe006-a3e5-44bd-8e41-c64b128ac8c6','2024-12-04 13:32:34.472992','\0','LIKE','post-6c8ca57a-9a8a-42e9-871c-4730ce8c7cce','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-08d75bfc-69b5-4b2f-8296-0f1354c2f0c2','2024-09-06 09:52:01.699748','\0','LIKE','post-659917a1-543b-48b0-9fe8-349b42a2abba','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-0aeff438-d115-4144-ba88-f7bab1bec3d7','2024-12-09 11:54:56.314092','\0','LIKE','post-8aec2410-54e6-42b4-9d39-962260c3954a','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-43d469f7-2366-4206-9317-dfc014a0a0ba'),
('notification-0d6f6dfb-b076-47f3-8003-6d38bfcadc8f','2024-09-05 17:26:42.343594','\0','LIKE','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('notification-0e427856-05e4-40a3-9761-674db5df566e','2024-12-11 08:32:37.914831','\0','LIKE','post-7a2a1118-f105-400e-9586-3fdc666d2278','user-80aec2d4-f8e1-4863-89a3-8e52c3c8a2e9','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-126da588-43f0-4293-8013-95df3394e9b2','2024-12-11 02:30:06.095030','\0','LIKE','post-553ab4ba-ad9e-45aa-a4a8-c5147c61741d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-154a81df-2f58-4263-bf31-8f83af2228b6','2024-09-06 03:35:02.298962','\0','LIKE','post-096b94ed-c629-4a5d-8f9d-d337cf817a10','user-17c06b67-ceec-420c-84ed-7440515ae71c','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('notification-156b2980-7554-401c-8c2f-84b51c011058','2024-12-11 08:32:20.987418','\0','LIKE','post-38045e5d-9028-4806-945c-704d5e61dd90','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-2c4fd13e-1d77-45ca-8ce8-4172eda10bd6'),
('notification-18d0379f-168b-4cf9-9d86-95e65b219ef9','2024-09-05 17:26:27.177976','\0','LIKE','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-58d07c7a-3873-47a5-af0e-795785fbe659','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('notification-1c38aa32-0e49-4ac8-ace9-ff14bcc7c180','2024-09-05 17:14:46.375841','\0','LIKE','post-dc43cb95-294f-43f2-a63c-424776698f82','user-be6ab20b-be5e-4b22-b6a6-957c1b5c3515','user-be6ab20b-be5e-4b22-b6a6-957c1b5c3515'),
('notification-23d8efeb-7579-4f10-87d0-3629bba76841','2024-12-11 02:30:15.577645','\0','LIKE','post-553ab4ba-ad9e-45aa-a4a8-c5147c61741d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-251139e5-d2ed-4e41-9816-c56a56b88bed','2024-09-06 03:46:02.459246','','LIKE','post-f65e604b-6e6e-480d-8f9d-30365a808458','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-2973bcd8-e68e-4a8f-8b46-ff7dc10d4599','2024-09-05 17:33:42.905699','','LIKE','post-f65e604b-6e6e-480d-8f9d-30365a808458','user-17c06b67-ceec-420c-84ed-7440515ae71c','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-2e692a4e-d889-4186-9b88-17e1b526a59f','2024-12-12 00:08:16.764551','\0','LIKE','post-c7cd26b3-124d-4b11-b8c5-43246c0354ee','user-5ae65d92-aea6-429c-adad-494e3c284d10','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-34da4e2b-daee-4599-94a3-314250fdade6','2024-12-11 07:22:34.461409','\0','LIKE','post-d808cb60-2aa8-48bf-aae4-dcfc53850210','user-58d07c7a-3873-47a5-af0e-795785fbe659','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-3653fa14-84e0-4c51-ae3c-56337aa72566','2024-09-12 02:03:43.908053','\0','LIKE','post-6984daf6-63c6-4450-a4de-eda9f72fb5bb','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2'),
('notification-37803996-5499-492b-8485-d22d0832448b','2024-09-12 02:05:19.587342','\0','LIKE','post-6984daf6-63c6-4450-a4de-eda9f72fb5bb','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2'),
('notification-39fd2c9e-4fbd-4c41-8a06-31f28465933d','2024-09-05 17:33:41.985393','\0','LIKE','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-17c06b67-ceec-420c-84ed-7440515ae71c','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('notification-3d29b045-1259-4e45-8c6f-72cd7e3518cf','2024-12-11 07:28:12.804438','\0','LIKE','post-f7eef878-5223-4e6e-ad9f-4fc20bd6fa25','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-425e640b-97bf-4950-8308-a4dab357eac2','2024-12-11 14:49:36.456083','\0','LIKE','post-ccea1073-77ab-42da-9c48-adada111080c','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-45af3218-899a-4376-8bec-c6e56606dad8','2024-12-09 03:26:34.820226','\0','LIKE','post-b84c1dd6-5fad-4b8b-b43b-9f93b7912342','user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-45f5e034-1e7d-4933-984d-73077078caea','2024-12-09 02:27:07.224489','\0','LIKE','post-63ff1697-e929-4a5c-aa05-cf25fd0dfcf0','user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f','user-e531cf52-e051-452a-8862-677c81595373'),
('notification-4736e868-3b34-4bdb-abe2-2ed33aad3dbc','2024-12-11 08:21:35.491386','\0','LIKE','post-367867b9-77c9-4640-9d39-2122a1cdc32a','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-43d469f7-2366-4206-9317-dfc014a0a0ba'),
('notification-4af46fbb-cfb7-436b-b158-d5bb31adf852','2024-12-11 08:04:26.556175','\0','LIKE','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('notification-4b5cf404-0611-4de5-bc39-8c9165c3d605','2024-12-11 08:14:19.104005','\0','COMMENT','post-0b9382dd-e2bf-44a9-a79c-89dea4572f6d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('notification-4eae4529-7b4c-4f1f-9074-867c9cb30bcf','2024-12-11 02:29:47.387359','\0','LIKE','post-d808cb60-2aa8-48bf-aae4-dcfc53850210','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-51ef4399-c281-4a45-8fb8-2a342e34062f','2024-12-11 02:29:40.348270','\0','LIKE','post-f7eef878-5223-4e6e-ad9f-4fc20bd6fa25','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-59abf874-f356-4fe9-8ce4-a254aab0f4aa','2024-09-09 07:28:36.293014','\0','LIKE','post-2df72984-ffee-44e8-8658-5f0b81f6bcef','user-5ae65d92-aea6-429c-adad-494e3c284d10','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-5b080353-82b0-4b53-ac0e-2e6046ec746a','2024-09-06 09:50:05.941988','\0','LIKE','post-367867b9-77c9-4640-9d39-2122a1cdc32a','user-08982a5c-ab3b-4927-a73e-7e6dac27b978','user-43d469f7-2366-4206-9317-dfc014a0a0ba'),
('notification-5cb1a571-56ac-40fb-8290-6d1f664752f4','2024-09-07 18:10:33.014607','\0','LIKE','post-fe0f1b28-0ab6-49f0-a218-9f4dbebea21e','user-852dce46-2f01-42bb-a681-1a1f56205317','user-e531cf52-e051-452a-8862-677c81595373'),
('notification-5ce2f832-5cb7-40b3-8738-2b3b570bca91','2024-12-11 07:22:36.705038','\0','LIKE','post-3fc53a7c-f1e3-44ba-b1be-ec21b61f9eb9','user-58d07c7a-3873-47a5-af0e-795785fbe659','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-5fec977e-00b2-45bb-b8ea-30831188ea75','2024-12-11 02:31:22.832174','\0','LIKE','post-d808cb60-2aa8-48bf-aae4-dcfc53850210','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-641a00cb-23da-4700-9cf4-226bbf2cce32','2024-09-12 02:03:57.099140','\0','LIKE','post-6984daf6-63c6-4450-a4de-eda9f72fb5bb','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2'),
('notification-65d3039d-111d-4364-973d-2291964bc268','2024-09-26 05:39:25.580397','\0','LIKE','post-bfdf2f34-d3e8-4f88-9726-d3ca77b52bb2','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-669821cd-674a-45df-84b4-7f14c8631625','2024-09-06 09:50:02.166757','\0','LIKE','post-096b94ed-c629-4a5d-8f9d-d337cf817a10','user-08982a5c-ab3b-4927-a73e-7e6dac27b978','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('notification-66bbf136-bfe4-4d60-ae11-4cf6fbf74576','2024-09-05 17:21:13.379000','\0','LIKE','post-f65e604b-6e6e-480d-8f9d-30365a808458','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-71b90135-c16e-490e-8df5-07264981506f','2024-09-09 08:16:06.450889','\0','LIKE','post-2df72984-ffee-44e8-8658-5f0b81f6bcef','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-723d5de8-a82c-4140-9a96-6a8d181baf9d','2024-09-06 17:38:28.403481','\0','LIKE','post-3af5c95d-7b4c-4a17-a426-bfb72fc2a8d0','user-5ae65d92-aea6-429c-adad-494e3c284d10','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('notification-78d21a9d-fc01-4b6f-8dcd-a3f2694359da','2024-12-04 13:32:20.772218','\0','LIKE','post-b84c1dd6-5fad-4b8b-b43b-9f93b7912342','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-7ea65806-53c3-46e5-ac8e-95f5fc76bb62','2024-09-05 17:31:00.121488','','LIKE','post-f65e604b-6e6e-480d-8f9d-30365a808458','user-c123b399-e1db-41cc-a4a5-31c315c5ccc9','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-7f9bdedf-eb26-4944-99a9-ad46018c11a3','2024-12-12 00:08:42.253464','\0','LIKE','post-c7cd26b3-124d-4b11-b8c5-43246c0354ee','user-58d07c7a-3873-47a5-af0e-795785fbe659','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-803a11d0-2817-40a3-b351-95ff2c241037','2024-09-06 09:40:53.350890','\0','LIKE','post-74c7e6a0-c0b9-4745-b508-6a736c2385da','user-43d469f7-2366-4206-9317-dfc014a0a0ba','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-815b6b6c-addc-4122-9ae2-8410f8a681db','2024-12-11 08:30:05.314230','\0','LIKE','post-1843858d-b1f3-43a9-bea9-ffbdc534e801','user-80aec2d4-f8e1-4863-89a3-8e52c3c8a2e9','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-83826984-aee1-48d1-93fc-62844095971a','2024-09-06 09:50:03.632990','\0','LIKE','post-38045e5d-9028-4806-945c-704d5e61dd90','user-08982a5c-ab3b-4927-a73e-7e6dac27b978','user-2c4fd13e-1d77-45ca-8ce8-4172eda10bd6'),
('notification-8536fd09-f4c0-48ce-839f-f57530ddfbfc','2024-12-11 06:40:41.832338','\0','LIKE','post-1843858d-b1f3-43a9-bea9-ffbdc534e801','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-8f35e33a-2103-446f-b34d-c0870be69c0c','2024-12-11 07:10:27.019362','\0','LIKE','post-d808cb60-2aa8-48bf-aae4-dcfc53850210','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-8fc421c3-8317-48d8-b819-7c57db6753d6','2024-12-11 07:22:47.999434','\0','COMMENT','post-2df72984-ffee-44e8-8658-5f0b81f6bcef','user-58d07c7a-3873-47a5-af0e-795785fbe659','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-91eb6d0a-128c-404d-a101-a87d627c116d','2024-12-12 00:07:51.621380','\0','LIKE','post-c7cd26b3-124d-4b11-b8c5-43246c0354ee','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-9346f226-374c-48a4-af2c-7c4ca66602f4','2024-12-09 05:48:24.512452','\0','LIKE','post-1843858d-b1f3-43a9-bea9-ffbdc534e801','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-945aa4fa-e804-4d6b-9188-4378956d9889','2024-12-11 07:28:38.669703','\0','COMMENT','post-bfdf2f34-d3e8-4f88-9726-d3ca77b52bb2','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-94c193d1-f533-4ed3-8ba4-88a8d067a024','2024-12-11 07:22:32.743084','\0','LIKE','post-f7eef878-5223-4e6e-ad9f-4fc20bd6fa25','user-58d07c7a-3873-47a5-af0e-795785fbe659','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-95cc242f-3396-42b4-84a2-e31a67ef659b','2024-12-11 07:23:29.840229','\0','LIKE','post-f65e604b-6e6e-480d-8f9d-30365a808458','user-58d07c7a-3873-47a5-af0e-795785fbe659','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-97d60a61-1394-430f-ab0c-940150ab42d6','2024-09-12 02:05:21.658316','\0','LIKE','post-6984daf6-63c6-4450-a4de-eda9f72fb5bb','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2'),
('notification-9999686d-a79d-44f8-adb1-3b49f5a57f4f','2024-09-06 09:46:11.740451','\0','LIKE','post-38045e5d-9028-4806-945c-704d5e61dd90','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-2c4fd13e-1d77-45ca-8ce8-4172eda10bd6'),
('notification-a1aa4c79-95d7-4690-8ce9-f8b0145c6247','2024-12-11 07:23:23.524259','\0','LIKE','post-2df72984-ffee-44e8-8658-5f0b81f6bcef','user-58d07c7a-3873-47a5-af0e-795785fbe659','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-a727e316-35f2-4d66-a825-eb8888e4e257','2024-09-07 18:10:08.614995','\0','LIKE','post-f65e604b-6e6e-480d-8f9d-30365a808458','user-852dce46-2f01-42bb-a681-1a1f56205317','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-a80ce468-a8ac-4cae-bde4-b0c889e0ea6e','2024-09-08 01:21:44.747429','\0','LIKE','post-93a7690f-f44e-4c26-97e5-00eefb81f76b','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('notification-b157baff-c543-4631-804f-522d4e3c6e70','2024-09-06 09:40:57.458349','\0','LIKE','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-43d469f7-2366-4206-9317-dfc014a0a0ba','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('notification-b80213e2-b3f0-4143-8526-a884a7b2c3c7','2024-09-05 17:30:56.886222','\0','LIKE','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-c123b399-e1db-41cc-a4a5-31c315c5ccc9','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('notification-ba53d397-508f-4770-a885-fc2b25516a6c','2024-09-07 04:52:59.397194','\0','LIKE','post-659917a1-543b-48b0-9fe8-349b42a2abba','user-5ae65d92-aea6-429c-adad-494e3c284d10','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-bb9c8e91-5475-45a7-88e4-84ae4057bbd0','2024-09-06 17:38:22.322107','\0','LIKE','post-3af5c95d-7b4c-4a17-a426-bfb72fc2a8d0','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('notification-bea42472-92dd-444a-95b2-290c011af954','2024-12-11 06:45:36.485556','\0','LIKE','post-f65e604b-6e6e-480d-8f9d-30365a808458','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-bfcd6c31-513c-4036-9c9f-9e4989734249','2024-12-11 07:28:18.213419','\0','LIKE','post-1843858d-b1f3-43a9-bea9-ffbdc534e801','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-c3dee19c-c8e1-420b-a1e1-5a6fcd719b2d','2024-09-07 17:58:00.938094','\0','LIKE','post-fe0f1b28-0ab6-49f0-a218-9f4dbebea21e','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-e531cf52-e051-452a-8862-677c81595373'),
('notification-c4268283-4fbe-45d1-9df8-1a6bb2323cdc','2024-12-11 07:28:24.854958','\0','LIKE','post-b84c1dd6-5fad-4b8b-b43b-9f93b7912342','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-c4b5e6dd-23a1-4a66-b874-3d61562f777e','2024-12-11 08:14:40.425271','\0','LIKE','post-367867b9-77c9-4640-9d39-2122a1cdc32a','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-43d469f7-2366-4206-9317-dfc014a0a0ba'),
('notification-c73561ed-a90e-4583-8b27-8723445d4670','2024-12-11 07:28:35.691876','\0','LIKE','post-3fc53a7c-f1e3-44ba-b1be-ec21b61f9eb9','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-ca7cb9de-2976-4cd2-8993-d3f7dd04b4d7','2024-12-11 07:28:13.840257','\0','LIKE','post-d808cb60-2aa8-48bf-aae4-dcfc53850210','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-cae25aa7-0185-4aa5-abb8-07f1dc8d9957','2024-12-11 08:30:30.728233','\0','COMMENT','post-1843858d-b1f3-43a9-bea9-ffbdc534e801','user-80aec2d4-f8e1-4863-89a3-8e52c3c8a2e9','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-cc05ae08-5b7a-4652-8d8b-d0077fa9e7ca','2024-12-11 08:14:24.488844','\0','LIKE','post-0b9382dd-e2bf-44a9-a79c-89dea4572f6d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('notification-cddff12c-8336-467e-ba71-282d019181c5','2024-12-11 07:28:20.636004','\0','COMMENT','post-1843858d-b1f3-43a9-bea9-ffbdc534e801','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-ced1f32e-8399-4800-95ae-cceca21194d8','2024-09-07 18:11:05.118164','\0','LIKE','post-63ff1697-e929-4a5c-aa05-cf25fd0dfcf0','user-852dce46-2f01-42bb-a681-1a1f56205317','user-e531cf52-e051-452a-8862-677c81595373'),
('notification-cee557cd-b015-472f-a335-525583d47528','2024-12-11 07:28:17.007989','\0','COMMENT','post-d808cb60-2aa8-48bf-aae4-dcfc53850210','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-ceeefd99-81d2-4b7c-aa0e-7fe500f06c6b','2024-12-11 08:14:10.012116','\0','LIKE','post-0b9382dd-e2bf-44a9-a79c-89dea4572f6d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('notification-d17e449a-9e79-4339-9104-199cc30532d2','2024-12-09 06:18:53.392087','\0','LIKE','post-d83d13a1-3581-4f64-8600-28e1eede7ec9','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-852dce46-2f01-42bb-a681-1a1f56205317'),
('notification-d9a33013-ac4d-4499-9cad-633be48a0d68','2024-12-11 03:25:56.808269','\0','LIKE','post-2df72984-ffee-44e8-8658-5f0b81f6bcef','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-db489577-0035-48ed-b368-b746e943d37c','2024-12-09 06:25:46.247553','\0','LIKE','post-bcd5494d-0efe-4fae-a16f-a38647d6e32d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('notification-dba4bccd-880a-4196-a7a1-40b9fdb7d432','2024-09-07 18:11:00.740767','\0','LIKE','post-367867b9-77c9-4640-9d39-2122a1cdc32a','user-852dce46-2f01-42bb-a681-1a1f56205317','user-43d469f7-2366-4206-9317-dfc014a0a0ba'),
('notification-ddcba590-71a0-4ff1-8347-09e7103db2c9','2024-12-11 07:23:25.029843','\0','LIKE','post-659917a1-543b-48b0-9fe8-349b42a2abba','user-58d07c7a-3873-47a5-af0e-795785fbe659','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-de6007c7-d829-4e28-b5af-00fac750e990','2024-12-11 08:21:49.406562','\0','COMMENT','post-367867b9-77c9-4640-9d39-2122a1cdc32a','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-43d469f7-2366-4206-9317-dfc014a0a0ba'),
('notification-e05b4b52-ed92-4d12-aec6-241b28096b7a','2024-09-07 18:10:54.454002','\0','LIKE','post-38045e5d-9028-4806-945c-704d5e61dd90','user-852dce46-2f01-42bb-a681-1a1f56205317','user-2c4fd13e-1d77-45ca-8ce8-4172eda10bd6'),
('notification-e846d39b-4226-40fc-911b-605d66405af0','2024-09-05 17:27:54.261049','\0','LIKE','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-5ae65d92-aea6-429c-adad-494e3c284d10','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('notification-ea2e326e-b8d4-400a-b5e5-2d10b3b98fa6','2024-09-06 09:50:00.961992','\0','LIKE','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-08982a5c-ab3b-4927-a73e-7e6dac27b978','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('notification-ec5bd6dc-f45a-413d-886f-0eb9eee765c2','2024-12-09 06:19:28.248758','\0','LIKE','post-6e4ad0e1-be67-441c-a621-c82384a957dd','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('notification-f11e4ba5-a0a0-46a1-af06-d380d1acec02','2024-12-11 07:22:42.320627','\0','COMMENT','post-6c8ca57a-9a8a-42e9-871c-4730ce8c7cce','user-58d07c7a-3873-47a5-af0e-795785fbe659','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-f6940fde-7e0b-41a2-a716-942d6c3c3f58','2024-09-06 03:46:00.607808','\0','LIKE','post-096b94ed-c629-4a5d-8f9d-d337cf817a10','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('notification-f6f07aa0-f7ec-4c20-adf1-46e756fcb2a0','2024-09-09 07:28:29.445774','\0','LIKE','post-6c8ca57a-9a8a-42e9-871c-4730ce8c7cce','user-5ae65d92-aea6-429c-adad-494e3c284d10','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('notification-fba40ddb-1307-4ec6-8317-e51ba000b810','2024-09-06 03:45:58.959097','\0','LIKE','post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('notification-fddcb44a-51da-4573-8745-624d0d7a37ff','2024-12-11 07:23:28.458933','\0','LIKE','post-74c7e6a0-c0b9-4745-b508-6a736c2385da','user-58d07c7a-3873-47a5-af0e-795785fbe659','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `post_id` varchar(255) NOT NULL,
  `caption` varchar(2000) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `FK72mt33dhhs48hf9gcqrq4fxte` (`user_id`),
  CONSTRAINT `FK72mt33dhhs48hf9gcqrq4fxte` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES
('post-096b94ed-c629-4a5d-8f9d-d337cf817a10','The Final Battle | Naruto Shippuden','2024-09-06 03:34:45.583256',NULL,'uploads/posts/user-17c06b67-ceec-420c-84ed-7440515ae71c/videos/dc4079db16a142bdaf8e0a7fb8d1cc84.mp4','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('post-0b9382dd-e2bf-44a9-a79c-89dea4572f6d','Wish in the dark','2024-09-07 18:01:15.437496',NULL,'uploads/posts/user-61584a5a-8d64-4dd9-b6b9-2f8634637be3/videos/d1ebbddc14a24037854f079115e0fc57.mp4','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-1843858d-b1f3-43a9-bea9-ffbdc534e801','ádasasdkasodkasodas','2024-12-09 05:48:19.440250',NULL,NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-1ef38c8e-b903-4b49-b907-f5176fc04ebe','This is the dark','2024-09-05 17:10:55.283884','uploads/posts/user-5ae65d92-aea6-429c-adad-494e3c284d10/images/eda00eab5d17404e93cb4d67bf90349f.webp',NULL,'user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('post-2aa0bd1e-7eb8-4571-970d-22e78bf2f35e','Video','2024-12-11 08:03:35.425337',NULL,'uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/videos/a8c3e804095c4ad8b4d450ec426d7a46.mp4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-2df72984-ffee-44e8-8658-5f0b81f6bcef','All we had to do was follow the damn train CJ','2024-09-06 15:02:11.118971','uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/images/b2def8116c1d4362abad627a3426dc88.avif',NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-367867b9-77c9-4640-9d39-2122a1cdc32a','Black Myth: Wukong | Vô Danh Khúc - Tăng Nhân Không Đầu (Full Vietsub)','2024-09-06 09:38:48.517140',NULL,'uploads/posts/user-43d469f7-2366-4206-9317-dfc014a0a0ba/videos/1416fd09df57491ba1dd58964c2910bd.mp4','user-43d469f7-2366-4206-9317-dfc014a0a0ba'),
('post-36823543-3229-47f1-ba47-4d2cb3b3fe80','abc','2024-12-08 21:46:00.535181',NULL,NULL,'user-939157f0-7fa6-43e9-8a6e-3fe758c83536'),
('post-36aa09ae-bf5b-4131-8f8e-9a9c6630ca0a','Video Test','2024-12-11 08:23:35.489857',NULL,'uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/videos/ebe95f5c875e402396cdd4aceb79a946.mp4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-38045e5d-9028-4806-945c-704d5e61dd90','[Vietsub]Loser - 米津玄師 (Kenshi Yonezu)','2024-09-06 09:45:14.642939',NULL,'uploads/posts/user-2c4fd13e-1d77-45ca-8ce8-4172eda10bd6/videos/daae6a32ece341cfae307f48086d0886.mp4','user-2c4fd13e-1d77-45ca-8ce8-4172eda10bd6'),
('post-3af5c95d-7b4c-4a17-a426-bfb72fc2a8d0','Why IT??','2024-09-06 17:38:05.639085','uploads/posts/user-5ae65d92-aea6-429c-adad-494e3c284d10/images/025076dc5cf94bbe960e754f66f7b3e4.jpg',NULL,'user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('post-3c3f5fc6-6a14-4705-8940-c5a88cf93271','Thử nghiệm UTF-8','2024-09-05 17:08:27.572757',NULL,NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-3fc53a7c-f1e3-44ba-b1be-ec21b61f9eb9','Test UTC 0 part 3.','2024-09-08 15:00:43.823964','uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/images/22ff56858f76415dad70b0732789e4fb.avif',NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-4c4dc3da-1f2b-4260-90c6-7e53b4db8f64','Tóm tắt Ben 10:\r\nhttps://www.youtube.com/watch?v=P-YMzo7hmwU','2024-09-05 17:38:31.910880','uploads/posts/user-48bad945-c9ae-4e4a-b0fc-eb2f1e4f7714/images/9a23df7d667b4e548af70090b15a0dfd.jpg',NULL,'user-48bad945-c9ae-4e4a-b0fc-eb2f1e4f7714'),
('post-553ab4ba-ad9e-45aa-a4a8-c5147c61741d','a','2024-12-04 16:01:39.611303',NULL,NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-63ff1697-e929-4a5c-aa05-cf25fd0dfcf0','NSYNC - Bye Bye Bye (Music Video) Deadpool & Wolverine Opening Scene Soundtrack MV','2024-09-07 17:56:55.497249',NULL,'uploads/posts/user-e531cf52-e051-452a-8862-677c81595373/videos/ba1c33d8a6054f0a87ce265959314268.mp4','user-e531cf52-e051-452a-8862-677c81595373'),
('post-659917a1-543b-48b0-9fe8-349b42a2abba','ZHIEND - Fallin\' (English)','2024-09-06 09:51:56.750492',NULL,'uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/videos/b7483e6655de423eaea7699fadb2464a.mp4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-6984daf6-63c6-4450-a4de-eda9f72fb5bb','Welcome to DevDev','2024-09-12 02:03:14.198045','uploads/posts/user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2/images/455dd91a162c45419886b475dbab9326.jpg',NULL,'user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2'),
('post-6c8ca57a-9a8a-42e9-871c-4730ce8c7cce','Test UTC 0.','2024-09-08 14:37:36.099729',NULL,NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-6e4ad0e1-be67-441c-a621-c82384a957dd','I am Dangerous Zombie','2024-09-07 18:01:49.341695','uploads/posts/user-61584a5a-8d64-4dd9-b6b9-2f8634637be3/images/6ffd1565d7754e0fa4b6f4679f0e3fa8.jpg',NULL,'user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-705d5061-2dde-4d0c-b258-580b32134a75','Test','2024-12-11 08:22:26.315965',NULL,NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-72346097-9681-45da-ba63-5f038aca4f06','I Want It That Way | Brooklyn Nine-Nine','2024-09-09 02:20:13.413781',NULL,'uploads/posts/user-e531cf52-e051-452a-8862-677c81595373/videos/1983502e6ec148f1b189567f3b8f5c61.mp4','user-e531cf52-e051-452a-8862-677c81595373'),
('post-74c7e6a0-c0b9-4745-b508-6a736c2385da','I have no enemies.','2024-09-06 04:25:46.240529',NULL,'uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/videos/05128e0e090b406caeb20be9aaf96360.mp4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-7a2a1118-f105-400e-9586-3fdc666d2278','Test','2024-12-11 08:14:51.263924',NULL,NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-8aec2410-54e6-42b4-9d39-962260c3954a','Playing game','2024-09-06 04:20:37.453835','uploads/posts/user-43d469f7-2366-4206-9317-dfc014a0a0ba/images/c1b4eac51bd441cc84a8632105528356.jpg',NULL,'user-43d469f7-2366-4206-9317-dfc014a0a0ba'),
('post-92387aec-e882-4936-878a-1b9eaebfb975','Test','2024-12-11 08:02:49.263820','uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/images/d32c1a88ca214be3b8e203ae96bb840a.jpg',NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-93944378-1ca5-4d48-b2d4-50a81d36d6b3','Yeah I\'m laughed','2024-09-07 18:09:56.600758','uploads/posts/user-852dce46-2f01-42bb-a681-1a1f56205317/images/cbe80a08976e4112b6227bc1a743a7e5.jpg',NULL,'user-852dce46-2f01-42bb-a681-1a1f56205317'),
('post-93a7690f-f44e-4c26-97e5-00eefb81f76b','I AM SURGEON','2024-09-05 17:17:57.226287',NULL,'uploads/posts/user-58d07c7a-3873-47a5-af0e-795785fbe659/videos/0429c497e569442dad2ef389cf414665.mp4','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('post-9d124bc1-d7ef-4961-a714-fd62b0322f59','First Test','2024-09-05 17:08:18.612426',NULL,NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-b84c1dd6-5fad-4b8b-b43b-9f93b7912342','hacked','2024-11-17 17:55:47.677616','uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/images/64583b7607fb4916bd392053b78056c5.gif',NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-bcd5494d-0efe-4fae-a16f-a38647d6e32d','Brain...','2024-12-09 02:19:31.909399','uploads/posts/user-61584a5a-8d64-4dd9-b6b9-2f8634637be3/images/5cc329328a90474b81bd18d6d6df5039.webp',NULL,'user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','Who made this meme?','2024-09-05 17:26:08.948215',NULL,'uploads/posts/user-58d07c7a-3873-47a5-af0e-795785fbe659/videos/65012ea7c4f444abb6a1bd86e605c73a.mp4','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('post-bfdf2f34-d3e8-4f88-9726-d3ca77b52bb2','Test UTC0 part 2.','2024-09-08 14:39:53.669429',NULL,NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-c7cd26b3-124d-4b11-b8c5-43246c0354ee','『NARUTO-ナルト-』25周年記念PV','2024-12-12 00:06:49.123802',NULL,'uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/videos/2334f8d2adb8441ea5e8290b9e8aa298.mp4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-ccea1073-77ab-42da-9c48-adada111080c','Image','2024-12-11 08:15:06.862417','uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/images/2905106757b54f01b38c1f3303782a70.png',NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-d808cb60-2aa8-48bf-aae4-dcfc53850210','ảnh','2024-12-09 06:13:00.859069','uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/images/63ea6a6419654c3eb9a5bdac972b5327.jpg',NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-d83d13a1-3581-4f64-8600-28e1eede7ec9','One piece ED memories ~17years after~','2024-09-07 18:18:11.557213',NULL,'uploads/posts/user-852dce46-2f01-42bb-a681-1a1f56205317/videos/ad35abd9657842d9871e6acdd060f655.mp4','user-852dce46-2f01-42bb-a681-1a1f56205317'),
('post-dc43cb95-294f-43f2-a63c-424776698f82','Chú khủng long của Nobita...','2024-09-05 17:14:41.011016','uploads/posts/user-be6ab20b-be5e-4b22-b6a6-957c1b5c3515/images/ac50229fb82b4a7c950c7d8eebe4a4bc.jpg',NULL,'user-be6ab20b-be5e-4b22-b6a6-957c1b5c3515'),
('post-dc498abe-9d33-492e-975b-6d5656a85d6b','I love pizzzzaaaa','2024-09-05 17:32:55.587596','uploads/posts/user-b4ec962c-8a6a-4d2c-bbf5-fe6a90fcc39c/images/038c36d478864db296cc4b9d1a695efe.webp',NULL,'user-b4ec962c-8a6a-4d2c-bbf5-fe6a90fcc39c'),
('post-f0e9c3ba-b182-47a5-b1bc-f8d65c441040','LoL I can go super saiyan 3','2024-09-05 17:34:57.975020','uploads/posts/user-17c06b67-ceec-420c-84ed-7440515ae71c/images/3f7c6132ceff48d2a3960e782abb8659.jpg',NULL,'user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('post-f618561a-234b-4c36-bcf2-8003301e1c1e','Image','2024-12-11 08:22:41.000754','uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/images/cdef947a0ae045f795f03808e38793e9.png',NULL,'user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-f65e604b-6e6e-480d-8f9d-30365a808458','[Vietsub][Perf] Robinson (Live 2009) - SPITZ','2024-09-05 17:21:10.327502',NULL,'uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/videos/01068f503ba94426ba77090f583c7dec.mp4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-f7eef878-5223-4e6e-ad9f-4fc20bd6fa25','video','2024-12-09 06:14:53.569102',NULL,'uploads/posts/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/videos/03e0569c950d48f9ad2a2f38de718474.mp4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-fe0f1b28-0ab6-49f0-a218-9f4dbebea21e','Janji - Heroes Tonight (feat. Johnning) | Progressive House | NCS - Copyright Free Music','2024-09-07 17:53:16.772133',NULL,'uploads/posts/user-e531cf52-e051-452a-8862-677c81595373/videos/1286f0c415584013a9920015f6538ba6.mp4','user-e531cf52-e051-452a-8862-677c81595373');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_liked`
--

DROP TABLE IF EXISTS `post_liked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_liked` (
  `post_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `FKnoixwp3xpu8lk7lxymitdoj1v` (`user_id`),
  CONSTRAINT `FKj5lvtjhiatxwwo6ssrusql0ji` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  CONSTRAINT `FKnoixwp3xpu8lk7lxymitdoj1v` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_liked`
--

LOCK TABLES `post_liked` WRITE;
/*!40000 ALTER TABLE `post_liked` DISABLE KEYS */;
INSERT INTO `post_liked` VALUES
('post-096b94ed-c629-4a5d-8f9d-d337cf817a10','user-08982a5c-ab3b-4927-a73e-7e6dac27b978'),
('post-096b94ed-c629-4a5d-8f9d-d337cf817a10','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('post-096b94ed-c629-4a5d-8f9d-d337cf817a10','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-096b94ed-c629-4a5d-8f9d-d337cf817a10','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-0b9382dd-e2bf-44a9-a79c-89dea4572f6d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-1843858d-b1f3-43a9-bea9-ffbdc534e801','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-1843858d-b1f3-43a9-bea9-ffbdc534e801','user-80aec2d4-f8e1-4863-89a3-8e52c3c8a2e9'),
('post-1843858d-b1f3-43a9-bea9-ffbdc534e801','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-2df72984-ffee-44e8-8658-5f0b81f6bcef','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('post-2df72984-ffee-44e8-8658-5f0b81f6bcef','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('post-2df72984-ffee-44e8-8658-5f0b81f6bcef','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-367867b9-77c9-4640-9d39-2122a1cdc32a','user-08982a5c-ab3b-4927-a73e-7e6dac27b978'),
('post-367867b9-77c9-4640-9d39-2122a1cdc32a','user-852dce46-2f01-42bb-a681-1a1f56205317'),
('post-367867b9-77c9-4640-9d39-2122a1cdc32a','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-38045e5d-9028-4806-945c-704d5e61dd90','user-08982a5c-ab3b-4927-a73e-7e6dac27b978'),
('post-38045e5d-9028-4806-945c-704d5e61dd90','user-852dce46-2f01-42bb-a681-1a1f56205317'),
('post-38045e5d-9028-4806-945c-704d5e61dd90','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-3af5c95d-7b4c-4a17-a426-bfb72fc2a8d0','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('post-3af5c95d-7b4c-4a17-a426-bfb72fc2a8d0','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-3fc53a7c-f1e3-44ba-b1be-ec21b61f9eb9','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('post-3fc53a7c-f1e3-44ba-b1be-ec21b61f9eb9','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-3fc53a7c-f1e3-44ba-b1be-ec21b61f9eb9','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-553ab4ba-ad9e-45aa-a4a8-c5147c61741d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-63ff1697-e929-4a5c-aa05-cf25fd0dfcf0','user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f'),
('post-63ff1697-e929-4a5c-aa05-cf25fd0dfcf0','user-852dce46-2f01-42bb-a681-1a1f56205317'),
('post-659917a1-543b-48b0-9fe8-349b42a2abba','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('post-659917a1-543b-48b0-9fe8-349b42a2abba','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('post-659917a1-543b-48b0-9fe8-349b42a2abba','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-6984daf6-63c6-4450-a4de-eda9f72fb5bb','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2'),
('post-6c8ca57a-9a8a-42e9-871c-4730ce8c7cce','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('post-6c8ca57a-9a8a-42e9-871c-4730ce8c7cce','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-6e4ad0e1-be67-441c-a621-c82384a957dd','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-74c7e6a0-c0b9-4745-b508-6a736c2385da','user-43d469f7-2366-4206-9317-dfc014a0a0ba'),
('post-74c7e6a0-c0b9-4745-b508-6a736c2385da','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('post-7a2a1118-f105-400e-9586-3fdc666d2278','user-80aec2d4-f8e1-4863-89a3-8e52c3c8a2e9'),
('post-8aec2410-54e6-42b4-9d39-962260c3954a','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-93a7690f-f44e-4c26-97e5-00eefb81f76b','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-b84c1dd6-5fad-4b8b-b43b-9f93b7912342','user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f'),
('post-b84c1dd6-5fad-4b8b-b43b-9f93b7912342','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-b84c1dd6-5fad-4b8b-b43b-9f93b7912342','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-bcd5494d-0efe-4fae-a16f-a38647d6e32d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-08982a5c-ab3b-4927-a73e-7e6dac27b978'),
('post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-43d469f7-2366-4206-9317-dfc014a0a0ba'),
('post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-c123b399-e1db-41cc-a4a5-31c315c5ccc9'),
('post-bfdf2f34-d3e8-4f88-9726-d3ca77b52bb2','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-c7cd26b3-124d-4b11-b8c5-43246c0354ee','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('post-c7cd26b3-124d-4b11-b8c5-43246c0354ee','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('post-c7cd26b3-124d-4b11-b8c5-43246c0354ee','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-ccea1073-77ab-42da-9c48-adada111080c','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-d808cb60-2aa8-48bf-aae4-dcfc53850210','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('post-d808cb60-2aa8-48bf-aae4-dcfc53850210','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-d808cb60-2aa8-48bf-aae4-dcfc53850210','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-d83d13a1-3581-4f64-8600-28e1eede7ec9','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-dc43cb95-294f-43f2-a63c-424776698f82','user-be6ab20b-be5e-4b22-b6a6-957c1b5c3515'),
('post-f65e604b-6e6e-480d-8f9d-30365a808458','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('post-f65e604b-6e6e-480d-8f9d-30365a808458','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('post-f65e604b-6e6e-480d-8f9d-30365a808458','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-f65e604b-6e6e-480d-8f9d-30365a808458','user-852dce46-2f01-42bb-a681-1a1f56205317'),
('post-f65e604b-6e6e-480d-8f9d-30365a808458','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-f65e604b-6e6e-480d-8f9d-30365a808458','user-c123b399-e1db-41cc-a4a5-31c315c5ccc9'),
('post-f7eef878-5223-4e6e-ad9f-4fc20bd6fa25','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('post-f7eef878-5223-4e6e-ad9f-4fc20bd6fa25','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('post-f7eef878-5223-4e6e-ad9f-4fc20bd6fa25','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-fe0f1b28-0ab6-49f0-a218-9f4dbebea21e','user-852dce46-2f01-42bb-a681-1a1f56205317'),
('post-fe0f1b28-0ab6-49f0-a218-9f4dbebea21e','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-fe0f1b28-0ab6-49f0-a218-9f4dbebea21e','user-e531cf52-e051-452a-8862-677c81595373');
/*!40000 ALTER TABLE `post_liked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_saved`
--

DROP TABLE IF EXISTS `post_saved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_saved` (
  `post_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  PRIMARY KEY (`post_id`,`user_id`),
  KEY `FKc79rdc34j0k9nnnwa37j8ndxp` (`user_id`),
  CONSTRAINT `FK2fnmj53fiwfrlfgkrcf7p5ws5` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  CONSTRAINT `FKc79rdc34j0k9nnnwa37j8ndxp` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_saved`
--

LOCK TABLES `post_saved` WRITE;
/*!40000 ALTER TABLE `post_saved` DISABLE KEYS */;
INSERT INTO `post_saved` VALUES
('post-0b9382dd-e2bf-44a9-a79c-89dea4572f6d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-63ff1697-e929-4a5c-aa05-cf25fd0dfcf0','user-852dce46-2f01-42bb-a681-1a1f56205317'),
('post-6e4ad0e1-be67-441c-a621-c82384a957dd','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('post-be3ac148-ec8b-4ce0-a9e6-9800b7988917','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('post-f65e604b-6e6e-480d-8f9d-30365a808458','user-852dce46-2f01-42bb-a681-1a1f56205317');
/*!40000 ALTER TABLE `post_saved` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` varchar(255) NOT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `cover_photo_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `gender` bit(1) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL CHECK (`role` between 0 and 1),
  `username` varchar(25) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UKsb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
('user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2',NULL,NULL,NULL,'lhphuc.7.01j@gmail.com','Lê',NULL,'Phúc','$2a$10$SYhHCw67XYsTkg20yLChau5yINIe8ufiDxz0wmLrfe/NrCpgGDGPa',1,'lhphuc'),
('user-08982a5c-ab3b-4927-a73e-7e6dac27b978','uploads/avatars/user-08982a5c-ab3b-4927-a73e-7e6dac27b978/7a990206504d4207a25d7fc6e02f5bdb.jpg',NULL,NULL,'thekillerpumpkin@gmail.com','Killer','\0','Pumpkin','$2a$10$fJx2tAILjiOxLnx6/8iFZukE0Oqtu.2r4U2IjwnVlhpgsY.ctC/DC',1,'thekillerpumpkin'),
('user-17c06b67-ceec-420c-84ed-7440515ae71c','uploads/avatars/user-17c06b67-ceec-420c-84ed-7440515ae71c/c96c66ae084c4e89b57869fe563306ca.jpg',NULL,NULL,'narutosupersaiyan3@yandex.ru','Naruto','','Uzumaki','$2a$10$pgS7s3ujhSj2nnhMiJwrruASlu3F/7a0NKqPKvyGYCA3K1FhHOPqu',1,'narutosupersaiyan3'),
('user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f',NULL,NULL,NULL,'khoakimdong1@gmail.com','Lê','','Khoa','$2a$10$PR2yjwWrbBMfV8JnuqoBh.BV.1myQxP5pmET51o6s07yX9zFuGIEu',1,'leekvn'),
('user-2c4fd13e-1d77-45ca-8ce8-4172eda10bd6','uploads/avatars/user-2c4fd13e-1d77-45ca-8ce8-4172eda10bd6/8e4ccdf068ba4a378e1545c448153699.jpg',NULL,NULL,'anonymousguy1412@yandex.ru','Anonymous','\0','Guy','$2a$10$tCqhTmvXtY7gIyfqBXyezuXmJICrrCkjrilXC0N96IJPikcfxUjtK',1,'anonymousguy1412'),
('user-43d469f7-2366-4206-9317-dfc014a0a0ba','uploads/avatars/user-43d469f7-2366-4206-9317-dfc014a0a0ba/a09c8ce3fde1458db931c5015bfd1f76.webp','uploads/covers/user-43d469f7-2366-4206-9317-dfc014a0a0ba/4eaf94c843b74b8aadf17ca8b6a11c96.jpg',NULL,'sunwukong3821@gmail.com','Sun','','Wukong','$2a$10$huruaue9AvO/MoaSFOA6ge6tcZPy8IpNcO9ZZoDgc.2guVD1/5L8e',1,'sunwukong3821'),
('user-48bad945-c9ae-4e4a-b0fc-eb2f1e4f7714','uploads/avatars/user-48bad945-c9ae-4e4a-b0fc-eb2f1e4f7714/db24dd9f9f644980b6fdfe3557589f1a.avif',NULL,NULL,'godbentennyson@microsoft.com','Ben','','Tennyson','$2a$10$mgMVFxYi3Atrx1gpILjtGeQsqUJpK6NPrrvoDbg5DUx2fQAfsYUJu',1,'godbentennyson'),
('user-52b2c5c1-ff12-40b7-9a7a-fa167d750824','uploads/avatars/user-52b2c5c1-ff12-40b7-9a7a-fa167d750824/0a5c420909d34b8c800e86df151ccb03.png',NULL,NULL,'admin@gmail.com','Admin',NULL,'Admin','$2a$10$6NIlk4j6EVd0E48K3sZ2OucXsP8WQihDmDQpfx4rn7te/NtQ80Lhm',0,'admin'),
('user-56c96694-40d7-49bb-b18e-e9c1765bf49c',NULL,NULL,NULL,'khoa@gmail.com','l33k','','knas','$2a$10$qBI7SusOZp9VwOTdbCErm.iPO6GHirjzTyOtrbzFPYVIJe//LpUii',1,'leek23'),
('user-58d07c7a-3873-47a5-af0e-795785fbe659','uploads/avatars/user-58d07c7a-3873-47a5-af0e-795785fbe659/d6a9eee69c7b49738071c3ad2c65c7fe.jpeg',NULL,NULL,'thegood.doctor@gmail.com','Good','','Doctor','$2a$10$jBMoZM2AXLBhkYt3YtWMLeuubS6zPtw/OLIzlFGoc7Pg5L0NWHw9.',1,'thegood.doctor'),
('user-5ae65d92-aea6-429c-adad-494e3c284d10','uploads/avatars/user-5ae65d92-aea6-429c-adad-494e3c284d10/61855d81c9b749189fdc430caacb69a6.jpg',NULL,NULL,'darkmattercygnussnow@gmail.com','Dark','','Matter','$2a$10$5jHUEj5XkupL6xUocqngyOfIgaCDBwiFd623Yofg4HuwETnfia.pi',1,'darkmattercygnussnow'),
('user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','uploads/avatars/user-61584a5a-8d64-4dd9-b6b9-2f8634637be3/47a6ace2ad3249e29ca0a721d0a44f3b.jpg','uploads/covers/user-61584a5a-8d64-4dd9-b6b9-2f8634637be3/7e340498955b4c23a34b5f8da96279cb.jpg',NULL,'genmthedangerouszombie@gmail.com','Dangerous','','Zombie','$2a$10$.0104Inntzo/vSPsNk70z.NebVGyWgRpZtDNRiaTPJ./OQhaBQXF.',1,'genmthedangerouszombie'),
('user-80aec2d4-f8e1-4863-89a3-8e52c3c8a2e9',NULL,NULL,NULL,'nhoclahola@gmail.com','Bao','','Nguyen Luu','$2a$10$ZD/Lh4ZuvEw1.Jit.FH4iOk.SPnJ.0mCbQ6m43NGEJfFAyh8/0uwO',1,'nhoclahola'),
('user-852dce46-2f01-42bb-a681-1a1f56205317','uploads/avatars/user-852dce46-2f01-42bb-a681-1a1f56205317/791d26b0e5714f4b9ae1cf30ba6fc4ba.jpg',NULL,NULL,'helaughedhaha@gmail.com','Gold','','Roger','$2a$10$3y08.ox2FDkKEwOQi1dEduQBw9bc7MlJLWIh9FTXq632WiK6jPk5.',1,'helaughedhaha'),
('user-939157f0-7fa6-43e9-8a6e-3fe758c83536',NULL,NULL,NULL,'baonguyen123@gmail.com','Bao','','Nguyen','$2a$10$n1xH6CY9Zht1uzcVhZuHYe.xjsA7MITRK3P1q/dRQ./TVTpqq3Zi6',1,'baonguyen123'),
('user-b4ec962c-8a6a-4d2c-bbf5-fe6a90fcc39c','uploads/avatars/user-b4ec962c-8a6a-4d2c-bbf5-fe6a90fcc39c/3aa4ec3888d74745a9a12dfd3272298d.webp',NULL,NULL,'pizzagirl123123@gmail.com','Pizza','\0','Girl','$2a$10$ixLG0wD0GDZ8p.QaH8TnM.HOE0LpYQW1El17leX9dxGRvk8T2300K',1,'pizzagirl123123'),
('user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','uploads/avatars/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/4086cfa883f646529f0e59eb5285f81a.png','uploads/covers/user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32/4cf2824467a74558b289179ea546a680.jpg',NULL,'nlg.bao1340@gmail.com','Bảo','','Nguyễn','$2a$10$mkKalgykw6zWYCRXJ5Eqguot87D9GdPZ5WSCP3ALR7GEngQtHORG6',1,'nlgbao1340'),
('user-be6ab20b-be5e-4b22-b6a6-957c1b5c3515','uploads/avatars/user-be6ab20b-be5e-4b22-b6a6-957c1b5c3515/096f226d140f4a5fbac7ab69eeafc2fd.png','uploads/covers/user-be6ab20b-be5e-4b22-b6a6-957c1b5c3515/3a39edf3150949b2bee85fdecd6160ef.jpg',NULL,'doraemonthecat@gmail.com','Doraemon','','Kun','$2a$10$FmAGp2w8MNadaz34SlyKYOTSpV7TM/f1W4HNQjPO83FRY4KE8UBUe',1,'doraemonthecat'),
('user-c123b399-e1db-41cc-a4a5-31c315c5ccc9',NULL,NULL,NULL,'punctualquerulous@gmail.com','Punchtual','','querulous','$2a$10$UaE7yI40ArASWdhleFcD3uYb7UCNqeT13tTlboAtXy9Er/VTKNIxu',1,'punctualquerulous'),
('user-d4a6cd3f-5cc8-488e-ae10-6d2493501c62',NULL,NULL,NULL,'22110332@student.hcmute.edu.vn','Nguyen','','Ngoc','$2a$10$SSpAXD2Lxb3ajO0P8OUzOuw677RVbFpNFmrs2DZMKc1AVG.7/grWS',1,'nnh2k4'),
('user-df151bc7-64fd-48ef-aa3d-3218c2d828b3',NULL,NULL,NULL,'22162005@student.hcmute.edu.vn','Bao','','Nguyen','$2a$10$2i2Wh5V9n3Thp0K9fUjjG.IjWJnhxRVo2zhW.5nt/M1p4/atuR..m',1,'22162005student'),
('user-e531cf52-e051-452a-8862-677c81595373','uploads/avatars/user-e531cf52-e051-452a-8862-677c81595373/8d2c523becb74da0bad4ddc486da2387.jpg',NULL,NULL,'heroestonigh123@gmail.com','Hero','\0','Tonight','$2a$10$t0CY8Vw90RN2UtI0a7vRoeU/90buA6Z7Q2RFYeKNPZuzUE0PjQc7C',1,'heroestonigh123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_chat`
--

DROP TABLE IF EXISTS `user_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_chat` (
  `chat_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  PRIMARY KEY (`chat_id`,`user_id`),
  KEY `FKojd9hqbl3e7kq3vvr9ym218i4` (`user_id`),
  CONSTRAINT `FKlr24iyc3pugqj18ybujh6hqmj` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`chat_id`),
  CONSTRAINT `FKojd9hqbl3e7kq3vvr9ym218i4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_chat`
--

LOCK TABLES `user_chat` WRITE;
/*!40000 ALTER TABLE `user_chat` DISABLE KEYS */;
INSERT INTO `user_chat` VALUES
('chat-02680d15-6f80-4949-baa7-a0b60aa6a054','user-52b2c5c1-ff12-40b7-9a7a-fa167d750824'),
('chat-02680d15-6f80-4949-baa7-a0b60aa6a054','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('chat-278f028e-d5c1-4d4e-9f82-06e7f58726a9','user-08982a5c-ab3b-4927-a73e-7e6dac27b978'),
('chat-278f028e-d5c1-4d4e-9f82-06e7f58726a9','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('chat-409baf83-cc2f-458b-813a-643f94bd11a4','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('chat-409baf83-cc2f-458b-813a-643f94bd11a4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('chat-418ef6ba-37e8-4909-a405-22ec3133a42d','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('chat-4f69ea13-5ccb-483c-9530-2357f1cc931f','user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f'),
('chat-4f69ea13-5ccb-483c-9530-2357f1cc931f','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('chat-785e8db4-cab7-40bc-9d32-fae7c240cbbf','user-80aec2d4-f8e1-4863-89a3-8e52c3c8a2e9'),
('chat-785e8db4-cab7-40bc-9d32-fae7c240cbbf','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('chat-8fa05046-f366-4bf8-a572-c40e8d0320bf','user-2c4fd13e-1d77-45ca-8ce8-4172eda10bd6'),
('chat-8fa05046-f366-4bf8-a572-c40e8d0320bf','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('chat-936fe1e0-8e31-4280-a27e-179294ca3ad8','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('chat-936fe1e0-8e31-4280-a27e-179294ca3ad8','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('chat-a944f1e5-5c4b-49ea-a3ab-d764ad984006','user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2'),
('chat-a944f1e5-5c4b-49ea-a3ab-d764ad984006','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('chat-c47516cb-4f77-41c3-bbf7-c853fad92ab4','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('chat-c47516cb-4f77-41c3-bbf7-c853fad92ab4','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('chat-eb8a52ce-5ca8-459f-8cc1-0438e40c37ce','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('chat-eb8a52ce-5ca8-459f-8cc1-0438e40c37ce','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3');
/*!40000 ALTER TABLE `user_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_follow`
--

DROP TABLE IF EXISTS `user_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_follow` (
  `follower_id` varchar(255) NOT NULL,
  `following_id` varchar(255) NOT NULL,
  PRIMARY KEY (`follower_id`,`following_id`),
  KEY `FKcjqk3xqtnelr14y8i3gp8dshw` (`following_id`),
  CONSTRAINT `FK80ys44o46lqqaoft28emh0476` FOREIGN KEY (`follower_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKcjqk3xqtnelr14y8i3gp8dshw` FOREIGN KEY (`following_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_follow`
--

LOCK TABLES `user_follow` WRITE;
/*!40000 ALTER TABLE `user_follow` DISABLE KEYS */;
INSERT INTO `user_follow` VALUES
('user-05478dd0-b61d-42c9-8a6c-5f3dc7e083f2','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('user-08982a5c-ab3b-4927-a73e-7e6dac27b978','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('user-08982a5c-ab3b-4927-a73e-7e6dac27b978','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('user-08982a5c-ab3b-4927-a73e-7e6dac27b978','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('user-17c06b67-ceec-420c-84ed-7440515ae71c','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('user-17c06b67-ceec-420c-84ed-7440515ae71c','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('user-17c06b67-ceec-420c-84ed-7440515ae71c','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f','user-e531cf52-e051-452a-8862-677c81595373'),
('user-52b2c5c1-ff12-40b7-9a7a-fa167d750824','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('user-52b2c5c1-ff12-40b7-9a7a-fa167d750824','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('user-58d07c7a-3873-47a5-af0e-795785fbe659','user-52b2c5c1-ff12-40b7-9a7a-fa167d750824'),
('user-58d07c7a-3873-47a5-af0e-795785fbe659','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('user-5ae65d92-aea6-429c-adad-494e3c284d10','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('user-5ae65d92-aea6-429c-adad-494e3c284d10','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('user-61584a5a-8d64-4dd9-b6b9-2f8634637be3','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('user-80aec2d4-f8e1-4863-89a3-8e52c3c8a2e9','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('user-80aec2d4-f8e1-4863-89a3-8e52c3c8a2e9','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('user-852dce46-2f01-42bb-a681-1a1f56205317','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('user-939157f0-7fa6-43e9-8a6e-3fe758c83536','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('user-939157f0-7fa6-43e9-8a6e-3fe758c83536','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-17c06b67-ceec-420c-84ed-7440515ae71c'),
('user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-1c5fbdf0-9362-4a00-b4e4-8a2096d7ed9f'),
('user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-2c4fd13e-1d77-45ca-8ce8-4172eda10bd6'),
('user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-43d469f7-2366-4206-9317-dfc014a0a0ba'),
('user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-58d07c7a-3873-47a5-af0e-795785fbe659'),
('user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-61584a5a-8d64-4dd9-b6b9-2f8634637be3'),
('user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32','user-852dce46-2f01-42bb-a681-1a1f56205317'),
('user-be6ab20b-be5e-4b22-b6a6-957c1b5c3515','user-52b2c5c1-ff12-40b7-9a7a-fa167d750824'),
('user-be6ab20b-be5e-4b22-b6a6-957c1b5c3515','user-5ae65d92-aea6-429c-adad-494e3c284d10'),
('user-be6ab20b-be5e-4b22-b6a6-957c1b5c3515','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32'),
('user-d4a6cd3f-5cc8-488e-ae10-6d2493501c62','user-bdc4b29b-1783-4a28-8ed7-57bcfdf5ae32');
/*!40000 ALTER TABLE `user_follow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-13  0:29:55
