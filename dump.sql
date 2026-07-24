-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abouts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abouts`
--

LOCK TABLES `abouts` WRITE;
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` VALUES (1,'Tentang SD Negeri Cadaspageran','SD Negeri Cadaspageran berkomitmen untuk memberikan pendidikan dasar terbaik bagi siswa-siswi. Kami berfokus pada pengembangan akademik, karakter, dan keterampilan hidup di era modern ini.','about-new.png','0','2026-07-24 17:17:21','2026-07-24 17:53:20');
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beritas`
--

DROP TABLE IF EXISTS `beritas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beritas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `beritas_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beritas`
--

LOCK TABLES `beritas` WRITE;
/*!40000 ALTER TABLE `beritas` DISABLE KEYS */;
INSERT INTO `beritas` VALUES (1,'Culpa et voluptate perspiciatis ut et quam.','culpa-et-voluptate-perspiciatis-ut-et-quam','<p>Sunt amet ab eos dolor. Maiores quia nobis molestiae quis et sint maxime reiciendis.</p><p>Omnis quis dolorum dolore consectetur. Qui cupiditate facilis sint qui error eum. Id id temporibus mollitia voluptate.</p><p>Corrupti facilis animi ut repellendus nostrum. Aut autem nemo harum fuga.</p><p>Repellendus magni soluta sit. Inventore et ipsa excepturi sit esse et quod. Omnis eum temporibus molestiae exercitationem est architecto.</p><p>Ut totam est et aliquid porro. Facilis dolor quaerat alias aut.</p>',2,'berita_thumb.png','0',1,'2026-07-24 09:34:49','2026-07-24 09:34:49'),(2,'Ullam accusantium id eveniet sunt quia laboriosam ipsa.','ullam-accusantium-id-eveniet-sunt-quia-laboriosam-ipsa','<p>Iste inventore et quia alias. Assumenda inventore nisi consequatur unde aut quia voluptas ut. Culpa quo commodi esse necessitatibus consequatur.</p><p>Quidem eos soluta vel dolores. Voluptatibus ut distinctio temporibus laudantium omnis accusantium. Ratione odio optio et quas. Libero officiis aliquid autem architecto ut labore cupiditate.</p><p>Nam consequatur ipsum aut nostrum nam. Enim consequatur aut dolores eum velit.</p><p>Natus sint ipsa ipsam quas assumenda quod minima. Nobis repudiandae repellendus voluptatem nesciunt quia reiciendis. Nemo distinctio ea id id molestiae laudantium vitae.</p><p>Ea itaque quidem tempore. Tempore quia vitae culpa ut ipsam dignissimos deleniti. Excepturi dolores quibusdam quia numquam et.</p>',3,'berita_thumb.png','0',1,'2026-07-24 09:34:49','2026-07-24 09:34:49'),(3,'Quae molestias minima dolores nihil dolores velit.','quae-molestias-minima-dolores-nihil-dolores-velit','<p>Reiciendis ut eveniet et aut deserunt. Qui rem voluptatem enim.</p><p>Suscipit vero quia rem consequatur rem veniam deserunt. Eaque qui molestiae accusamus est voluptas asperiores porro. Amet molestias ut rerum ut nulla totam rerum. Est quia laboriosam aliquam et.</p><p>Ut voluptatibus laborum eaque tempora commodi fugit harum. Quo quae officia cumque illo repellendus deserunt distinctio. Sit odit neque quas ab dolore.</p><p>Non molestiae sit in modi. Libero debitis omnis quo porro. Vel alias alias laboriosam minus autem.</p><p>Distinctio qui suscipit exercitationem quam esse aut nobis. Sapiente non asperiores laboriosam modi veniam blanditiis deleniti qui. Praesentium praesentium et beatae assumenda.</p>',4,'berita_thumb.png','0',1,'2026-07-24 09:34:49','2026-07-24 09:34:49'),(4,'Aspernatur est commodi eos esse ut aut.','aspernatur-est-commodi-eos-esse-ut-aut','<p>Amet consequatur eius repudiandae et consequatur. Qui perferendis laudantium quae dolor dolor placeat hic. Quis laudantium quis maiores fuga est.</p><p>Explicabo ut dignissimos sint itaque. Reprehenderit modi est necessitatibus eos aut ut. Est eaque pariatur non minima repellendus deserunt. Labore ut voluptatem vero fugit in. Nam sit necessitatibus ab omnis voluptas in aut.</p><p>Laborum veritatis ratione aut numquam rerum culpa aspernatur. Eum dolor sint excepturi sit sint. Dolores sit temporibus cum sed quia. Ut totam et aperiam itaque in id.</p><p>Atque incidunt quis tempore dicta. Et voluptatem libero alias facilis. Ullam voluptas et ipsum architecto distinctio magnam sequi. Accusamus nulla aut voluptatem dolorem.</p><p>Cupiditate deserunt nihil id nobis mollitia et. Quam odit nobis ut. Quas iusto molestiae error numquam eum minus.</p>',2,'berita_thumb.png','0',1,'2026-07-24 09:34:49','2026-07-24 09:34:49'),(5,'Voluptatem aspernatur et consequatur quia.','voluptatem-aspernatur-et-consequatur-quia','<p>Consectetur ducimus culpa sed iure magnam repudiandae. Et illo aut et ut. Asperiores velit est et impedit accusantium mollitia corrupti quisquam.</p><p>Et qui harum accusamus autem reiciendis rerum aliquam nobis. Accusamus enim dolores et. Illo officiis quo aperiam expedita quia error aut. Sint tempore suscipit facere aut est in suscipit.</p><p>Non quas consequatur corporis voluptatibus consequuntur modi doloribus. Alias maiores laboriosam est nobis et laboriosam quis quis. Aut maxime rem pariatur delectus consectetur.</p><p>Quo voluptatem ducimus accusamus rerum. Saepe harum et voluptate quos placeat qui laborum et. Ipsa sunt aut rem illo exercitationem laborum velit.</p><p>Sed ipsam asperiores eos voluptas nisi. Fugiat saepe architecto numquam dolorem.</p>',2,'berita_thumb.png','0',1,'2026-07-24 09:34:49','2026-07-24 09:34:49'),(6,'Laborum tenetur sunt recusandae vitae velit.','laborum-tenetur-sunt-recusandae-vitae-velit','<p>Exercitationem enim qui amet cupiditate laudantium. Quis sapiente quod magnam blanditiis saepe ratione illum impedit. Laboriosam facilis itaque aut tempora illum nesciunt. Est sunt iure harum voluptatum ut est.</p><p>Dolor non iure sed in molestiae eligendi. Aliquid rerum dolorem qui fuga voluptatem vitae. Molestiae quas aut earum odit.</p><p>Autem id dolore quia consequatur incidunt. Suscipit vitae et et porro nisi corrupti. Reprehenderit consectetur est minima ullam rem. Natus quis non reprehenderit dignissimos aspernatur commodi delectus.</p><p>Quae autem illum voluptatibus sunt sunt. Necessitatibus est libero exercitationem non. Hic magnam provident quisquam ipsam.</p><p>In eveniet minima maxime inventore tempore tempore aut. Maxime optio dolore consequatur ut aut quibusdam. Odit et quidem reprehenderit. Odit sunt qui aut facilis recusandae autem maxime perferendis. Quia corporis quia facere est.</p>',3,'berita_thumb.png','0',1,'2026-07-24 09:34:49','2026-07-24 09:34:49'),(7,'Facere doloremque occaecati commodi et.','facere-doloremque-occaecati-commodi-et','<p>Iure dolorem officia maiores commodi voluptatibus neque. Quaerat doloremque pariatur est tempora dolorem delectus quia. A velit quod non veniam quod.</p><p>Quia ea atque et rerum exercitationem placeat deserunt eveniet. Eveniet id similique pariatur eum laboriosam. Aspernatur qui sequi voluptatem fuga sit neque accusamus voluptatibus.</p><p>Iure non totam excepturi sint est illum. Quia aut et consectetur iusto labore hic sapiente animi. Porro officia sunt atque sunt. Inventore rerum quod et autem et repellendus excepturi. Ad deserunt asperiores iure architecto accusantium cupiditate eum.</p><p>Sed non itaque molestiae autem dolorem. Veniam quibusdam deserunt aut aut nulla vel consequatur. Dolor deserunt vel non corrupti velit officia nisi.</p><p>Quis accusantium eum rerum quidem temporibus voluptatem enim. Autem asperiores voluptatem commodi reiciendis explicabo est sequi. Hic quo commodi similique quia. Recusandae commodi ratione ut nihil.</p>',2,'berita_thumb.png','0',1,'2026-07-24 09:34:49','2026-07-24 09:34:49'),(8,'Veritatis qui doloremque omnis reiciendis natus qui culpa.','veritatis-qui-doloremque-omnis-reiciendis-natus-qui-culpa','<p>Dolorum molestiae et incidunt quia. Qui laudantium necessitatibus debitis eligendi ad aliquam. Assumenda vitae nihil voluptas voluptatem dignissimos. Suscipit modi officia tempora molestias minima. Ab voluptates tenetur accusamus et.</p><p>Minus optio illum ut et similique ratione ad. Perferendis est sed molestiae sed dolor quam. Quasi quis commodi dolores qui consequuntur quis doloribus. Dignissimos ipsa eos qui.</p><p>Consequatur repellat ut delectus et. Quia ipsam et debitis praesentium molestiae. Maxime ab id omnis. Ea corrupti autem error quia. Illum deleniti commodi quidem veniam sed neque temporibus.</p><p>Quos consequatur maxime vero nihil dolores eum. Et quis qui veritatis quibusdam iste delectus nulla. Omnis molestiae ullam modi vel.</p><p>Mollitia debitis sed placeat. Voluptatem quo laudantium ut dolorem accusamus tempore ut. Iste est itaque ut non corporis. Totam a aut enim qui inventore aperiam. Repellendus porro adipisci reprehenderit cum quisquam quasi.</p>',4,'berita_thumb.png','0',1,'2026-07-24 09:34:49','2026-07-24 09:34:49'),(9,'Et eum vel dolores.','et-eum-vel-dolores','<p>Non placeat aut aspernatur. Natus exercitationem rerum corporis placeat ab officia atque laboriosam. Eos alias quia vel numquam. Vero occaecati tenetur quos ut quo qui. Quas est sequi iusto eligendi perferendis.</p><p>Amet facilis ea cumque voluptatem cupiditate quia. Modi quis excepturi laborum dolores nemo iste. Similique suscipit ut in. Aut consequatur qui voluptas in eius aut. Repellat et est architecto animi nostrum unde.</p><p>Animi velit repudiandae odio est magnam quod impedit. Libero veritatis corporis in quo facere qui. Impedit amet non expedita molestiae enim. Laborum totam amet consequatur. Maiores ut quam eveniet sequi.</p><p>Voluptatem nostrum dolor sit et accusamus sed. Distinctio voluptatibus sapiente et quia id. Perspiciatis voluptate eos harum molestiae consequuntur. Ipsum eum et amet impedit nihil est.</p><p>Earum deserunt sequi est qui ipsa labore eligendi. Suscipit voluptas sint magnam. Sequi dolor qui rerum in voluptate velit dolor quae.</p>',4,'berita_thumb.png','0',1,'2026-07-24 09:34:49','2026-07-24 09:34:49'),(10,'Ipsam ut sit dignissimos illum nostrum.','ipsam-ut-sit-dignissimos-illum-nostrum','<p>Illo quia nulla soluta doloribus nihil dolorem. Officia aut dolorem assumenda dicta atque unde facilis.</p><p>At dolorem maiores qui dignissimos. Quia atque facere blanditiis et quisquam. Temporibus eaque delectus cumque.</p><p>Ea ducimus fuga magni consequatur inventore dicta. Dolorem neque fugit voluptates aliquam et.</p><p>Vitae non quia harum voluptatem doloremque minus quia eius. Non optio est quo non voluptas quia. Ea eum libero voluptas.</p><p>Sint ipsa illo corrupti saepe culpa ad. Rem explicabo in delectus incidunt dolorum debitis dolor. Sed incidunt quaerat alias et et animi magnam.</p>',1,'berita_thumb.png','0',1,'2026-07-24 09:34:49','2026-07-24 09:34:49'),(11,'Non et tenetur sed error.','non-et-tenetur-sed-error','<p>Debitis sequi odit eius sit rem. Laudantium porro velit voluptates officia. Sit in et libero placeat ullam rerum. Ut illo voluptatum sed repellat rerum porro vitae.</p><p>Expedita consequatur quos hic sint necessitatibus dolorum. Id sapiente inventore alias amet beatae. Fugit et eum eum. Et reiciendis dolorum sapiente quia eligendi sed et. Eligendi consequatur nobis voluptatum corrupti sapiente.</p><p>Corporis vero qui non odio consequatur. Tempore vero distinctio fugit ad similique. Quod sed sit molestiae. Neque in et voluptates est vitae.</p><p>Dolorem possimus sunt voluptatem sint eos ullam. Suscipit molestias et id. Et incidunt omnis ad sunt et.</p><p>Harum veniam voluptas harum minima veniam maiores. Est eum voluptatem natus laborum quis tempore. Fugiat impedit perspiciatis aut sit rem cumque. Odit distinctio suscipit ut perspiciatis expedita laudantium architecto. Voluptas velit soluta cupiditate aut.</p>',3,'berita_thumb.png','0',1,'2026-07-24 09:35:11','2026-07-24 09:35:11'),(12,'Excepturi repellendus fuga eaque qui.','excepturi-repellendus-fuga-eaque-qui','<p>Provident fugit quisquam exercitationem voluptatibus tempore. Et quas iste sint mollitia culpa odit. Et ea dolore saepe quos.</p><p>Quia culpa ea odio. Dolorum rerum animi laudantium ex cum rerum sed tempora. Sint qui sed officia et officiis illum facere.</p><p>Ipsam rerum aut et modi neque ut. Quae est quae explicabo distinctio unde autem molestiae. Ut tempore voluptatibus accusantium neque asperiores unde.</p><p>Architecto iusto velit rerum ex. Et atque cumque inventore mollitia molestiae. Est unde expedita fuga. Eum et facere libero labore.</p><p>Omnis tempore natus aliquid temporibus rem non. Distinctio consequatur libero neque quos et.</p>',3,'berita_thumb.png','0',1,'2026-07-24 09:35:11','2026-07-24 09:35:11'),(13,'Dicta molestiae voluptas est explicabo nostrum nemo omnis.','dicta-molestiae-voluptas-est-explicabo-nostrum-nemo-omnis','<p>Aut id error voluptatem cumque. Perspiciatis quis magnam amet qui voluptatem consequatur. Amet sunt doloremque eum temporibus aut qui quo.</p><p>Minima omnis qui doloribus quod aut et. Fuga accusantium voluptates sint sint nam omnis sunt. Sit optio blanditiis illo est earum. Aut animi qui aliquam quasi voluptates animi.</p><p>Voluptatum et aut numquam dignissimos. Neque quia a veniam laborum architecto commodi id. Rerum iusto non excepturi consequatur rerum incidunt.</p><p>Tenetur sed in voluptatum cumque veritatis. Perspiciatis saepe natus consectetur.</p><p>Laborum illo eum voluptatem voluptate inventore magnam sunt. Enim aut laborum adipisci dolorum. Accusamus neque sit in qui veritatis praesentium qui. Nesciunt necessitatibus dicta aut illum.</p>',4,'berita_thumb.png','0',1,'2026-07-24 09:35:11','2026-07-24 09:35:11'),(14,'Corrupti nam consequatur culpa aut.','corrupti-nam-consequatur-culpa-aut','<p>In fugiat est provident vero voluptas. Deserunt possimus rerum voluptatum architecto quia. Eos quia similique et esse laudantium fugiat. Quam quia est dolorum voluptatem deleniti dolores.</p><p>Nemo autem et et voluptatem sint est. Recusandae nisi rerum iure et quis eveniet aspernatur.</p><p>Quia natus placeat adipisci vel dolor et. Explicabo ratione quaerat voluptatem repellat et impedit. Accusamus porro veritatis aperiam placeat id ea nesciunt. Rerum molestiae culpa est sit ut qui. Suscipit repudiandae at ipsam qui.</p><p>Voluptatem blanditiis rerum saepe est nihil nihil. Qui qui doloremque iure et praesentium quia eius quos. Quisquam numquam non aut ipsa debitis. Ducimus laudantium quam reprehenderit.</p><p>Repellendus consequatur consequatur ipsam consequatur voluptatem odio est. Amet suscipit vitae ea numquam eos. Minus fugit voluptates vel molestiae accusamus velit. Ipsa aliquid consequuntur sed ratione. Mollitia explicabo quia dignissimos ullam laudantium consectetur.</p>',4,'berita_thumb.png','0',1,'2026-07-24 09:35:11','2026-07-24 09:35:11'),(15,'Officia veniam et aspernatur ullam excepturi quis ullam.','officia-veniam-et-aspernatur-ullam-excepturi-quis-ullam','<p>Dolor quos voluptas enim accusamus nostrum eum est. Quo minima quod quis nobis et fugiat alias eveniet. Enim non dolor qui unde autem illum.</p><p>Id voluptatem dolorem autem qui ullam et vitae voluptatum. Aut consequatur corporis repellendus exercitationem corporis omnis atque. Quia ea rerum id pariatur asperiores nulla consequuntur voluptas. Illo quis animi quos et vero molestias.</p><p>Incidunt iure suscipit consequatur consequatur sed. Ullam voluptates saepe nobis qui sunt aut et. Quos veritatis ut est.</p><p>Molestias in architecto id qui quod animi minus. Sunt qui libero est voluptatem libero corrupti. Dolores nemo quis earum amet quas quibusdam ut. Cupiditate non ea natus voluptas quasi at.</p><p>Optio quo perferendis veniam. Delectus vel impedit magnam reprehenderit qui. Est praesentium facere atque quae iste ut.</p>',1,'berita_thumb.png','0',1,'2026-07-24 09:35:11','2026-07-24 09:35:11'),(16,'Rerum inventore non qui quia fugit.','rerum-inventore-non-qui-quia-fugit','<p>Est quae voluptate ex possimus quia et. Est harum dolor doloremque deserunt at. Sint sunt rerum architecto.</p><p>Eveniet repellat ullam delectus. Minus sit temporibus quas in ut.</p><p>Doloribus quis culpa maiores. Est similique suscipit veniam necessitatibus dolorem qui repellendus libero.</p><p>Sunt maxime temporibus nobis nisi odio dolorem. Illum rerum est odio facilis.</p><p>Et dolores aperiam qui sit. Sit ex ratione rem alias recusandae voluptatem temporibus vel. Libero officia est iure vel libero quas voluptatem. Mollitia aut vel numquam officiis.</p>',3,'berita_thumb.png','0',1,'2026-07-24 09:35:11','2026-07-24 09:35:11'),(17,'Sunt laborum eius quis pariatur.','sunt-laborum-eius-quis-pariatur','<p>Non eligendi a necessitatibus nam quia omnis ullam. Animi possimus fugiat nihil consequuntur debitis.</p><p>Magni quisquam magnam adipisci. Nihil dolorem facere est voluptas quo sit eos. Quo natus et similique et dolores cumque.</p><p>Aut velit omnis iste quas omnis. Aut in corrupti ea dolor. Qui voluptates ut error aspernatur cumque voluptas. Nobis enim repellat ut repellat neque.</p><p>Non et qui nihil praesentium. Porro nostrum beatae facere sint voluptatum. Quos aut commodi exercitationem aut in deserunt.</p><p>Qui et quas qui et ab reprehenderit exercitationem. Ad natus sint quia eius. Molestiae repellendus molestiae magnam consequuntur dicta. Aut culpa voluptatum et natus voluptatum eos nihil. Neque dignissimos vel pariatur natus.</p>',3,'berita_thumb.png','0',1,'2026-07-24 09:35:11','2026-07-24 09:35:11'),(18,'Laboriosam est ducimus quo quam totam et et ut.','laboriosam-est-ducimus-quo-quam-totam-et-et-ut','<p>Voluptatem sit et nulla et ut assumenda labore. Magni quo excepturi magnam illo. Labore sit voluptatem nesciunt accusamus nam omnis unde. Officia quis autem corrupti magni qui molestias.</p><p>Nemo cupiditate doloremque deleniti aut rerum rem eveniet. Nam a qui porro placeat.</p><p>Aperiam explicabo similique voluptatum porro aut corrupti in accusantium. Dolor inventore iste non nihil provident minus praesentium. Sequi est quia dolores non ipsa laudantium et. Tempore saepe dolorum at quod.</p><p>Perferendis porro officiis voluptas quod in. Nihil voluptatem nulla quia. Exercitationem neque commodi velit eos rerum.</p><p>Debitis aut quis necessitatibus sit delectus consequatur vitae. Porro et voluptatem non eos repellendus sed quas. Dolor amet eveniet laborum repellat non voluptate atque. Optio doloremque nulla rerum.</p>',3,'berita_thumb.png','0',1,'2026-07-24 09:35:11','2026-07-24 09:35:11'),(19,'Ea perferendis et nesciunt.','ea-perferendis-et-nesciunt','<p>Vero exercitationem eos est tempora voluptatem. Exercitationem et provident fugiat reiciendis et maxime illo. Quidem nisi adipisci alias voluptas et fugit ex. Modi ducimus blanditiis ratione ipsam quos quis repudiandae.</p><p>Est necessitatibus nemo quo sed sint eius. Dolor excepturi ut consequatur non ut. Voluptas occaecati iusto id et doloremque quia odit eius. Quo labore est cum voluptatem asperiores tempore.</p><p>Deleniti doloribus voluptatem ducimus et et temporibus. Eveniet qui voluptates porro iusto commodi et aut. Impedit deserunt corrupti explicabo saepe quia nobis. Recusandae adipisci ut consequatur dolorem voluptates.</p><p>Consequatur tempora dolor praesentium voluptatibus molestiae beatae et. Explicabo odit quas corporis. Odit laboriosam voluptatem sequi esse dolor fuga. Odit molestiae quibusdam iusto aut.</p><p>Eligendi dignissimos sit quasi. Enim labore illo nemo molestiae qui. Repellat nihil modi ex id quisquam excepturi.</p>',4,'berita_thumb.png','0',1,'2026-07-24 09:35:11','2026-07-24 09:35:11'),(20,'Eaque hic consequatur velit non veritatis et blanditiis.','eaque-hic-consequatur-velit-non-veritatis-et-blanditiis','<p>Odit et expedita deleniti ab itaque sit ipsa. Dolorem explicabo possimus vel voluptatem. Ea eum explicabo dolores eveniet quisquam architecto.</p><p>Doloribus enim officiis quis est culpa pariatur est. Repudiandae ut odio atque rerum. Doloribus autem et perspiciatis at ab libero. Non saepe consectetur laudantium laudantium rerum.</p><p>Est magni quaerat officiis vero ut ut quia. Eum eligendi nostrum corrupti est ad numquam sint ut. Earum et quia odio enim quae culpa. Dolores et et et consectetur excepturi corporis et.</p><p>Voluptatem quasi maxime temporibus quae ducimus. Et ut dolor quod voluptatem. Voluptas dolores quidem pariatur ex. Doloremque et ut ut libero.</p><p>Maxime quidem dolores autem et. Sint quia repellendus quo dolor neque sit debitis nihil. Quod vero dolorem est libero quia. Molestiae quo corporis ullam.</p>',2,'berita_thumb.png','0',1,'2026-07-24 09:35:11','2026-07-24 09:35:11'),(21,'Penerimaan Siswa Baru SD Negeri Cadaspageran','penerimaan-siswa-baru-sd-negeri-cadaspageran','<p>Penerimaan Siswa Baru (PPDB) untuk tahun ajaran baru telah dibuka. Silakan daftarkan putra/putri Anda melalui portal PPDB online kami atau datang langsung ke sekretariat pendaftaran di sekolah.</p>',5,'berita.jpg','0',1,'2026-07-24 17:17:59','2026-07-24 17:17:59');
/*!40000 ALTER TABLE `beritas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_murids`
--

DROP TABLE IF EXISTS `data_murids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_murids` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `nis` bigint(20) DEFAULT NULL,
  `nisn` bigint(20) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` enum('Islam','Kristen Katolik','Kristen Protestan','Hindu','Budha','Konghucu') DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `asal_sekolah` varchar(255) DEFAULT NULL,
  `proses` enum('Pendaftaran','Berkas','Murid','Ditolak') NOT NULL DEFAULT 'Pendaftaran',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_murids`
--

LOCK TABLES `data_murids` WRITE;
/*!40000 ALTER TABLE `data_murids` DISABLE KEYS */;
INSERT INTO `data_murids` VALUES (1,66,12345678,NULL,NULL,'2000-01-01',NULL,NULL,NULL,NULL,NULL,'Pendaftaran','2026-07-24 11:44:42','2026-07-24 11:44:42');
/*!40000 ALTER TABLE `data_murids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `acara` datetime NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `events_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Ipsum sit rerum a et sequi. 1977','Doloremque est magni aspernatur a eligendi sapiente. Itaque in nulla quisquam adipisci necessitatibus.','ipsum-sit-rerum-a-et-sequi-1977','<p>Repellendus quos omnis quod quia aut quae tempore.</p>','event_thumb.png','2026-11-16 21:15:04','Lapangan Utama Sekolah','0','2026-07-24 09:35:11','2026-07-24 09:35:11'),(2,'Et et molestiae assumenda mollitia. 2009','Voluptatum esse sapiente soluta maxime culpa repudiandae architecto. Facilis rerum esse sed ut nostrum. Neque qui commodi recusandae nobis tenetur.','et-et-molestiae-assumenda-mollitia-2009','<p>Similique impedit minus minus et et fugit.</p>','event_thumb.png','2027-02-26 04:39:43','Lapangan Utama Sekolah','0','2026-07-24 09:35:11','2026-07-24 09:35:11'),(3,'Corrupti sit fuga quis aliquam. 2011','Non ut hic tempora hic nulla. Eum repudiandae aut nobis voluptatum et eum.','corrupti-sit-fuga-quis-aliquam-2011','<p>Sint est consectetur non culpa natus at aperiam tempora sed rerum.</p>','event_thumb.png','2026-09-21 01:05:37','Lapangan Utama Sekolah','0','2026-07-24 09:35:11','2026-07-24 09:35:11'),(4,'Ea consequatur corporis. 1982','Expedita minus et aut ut sint consequatur animi. Sapiente neque blanditiis et nihil.','ea-consequatur-corporis-1982','<p>Cumque consequatur vero repellendus quidem aut aut.</p>','event_thumb.png','2026-07-24 19:30:02','Lapangan Utama Sekolah','0','2026-07-24 09:35:11','2026-07-24 09:35:11'),(5,'Inventore culpa amet. 1996','Delectus suscipit et quaerat aperiam. Animi nihil et aliquam rem. Quo ut maxime magni quod.','inventore-culpa-amet-1996','<p>Magni sit nulla impedit asperiores quasi laboriosam tenetur voluptas.</p>','event_thumb.png','2026-11-13 11:52:30','Lapangan Utama Sekolah','0','2026-07-24 09:35:11','2026-07-24 09:35:11'),(6,'Lomba Kemerdekaan 17 Agustus','Perayaan HUT Kemerdekaan RI di SD Negeri Cadaspageran','lomba-kemerdekaan-17-agustus','<p>Dalam rangka memeriahkan hari Kemerdekaan Republik Indonesia, SD Negeri Cadaspageran mengadakan berbagai perlombaan menarik antar kelas. Mari ikut serta dan meriahkan acara ini!</p>','event.jpg','2026-08-25 00:17:59','Lapang SD Negeri Cadaspageran','0','2026-07-24 17:17:59','2026-07-24 17:17:59');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footers`
--

DROP TABLE IF EXISTS `footers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footers`
--

LOCK TABLES `footers` WRITE;
/*!40000 ALTER TABLE `footers` DISABLE KEYS */;
INSERT INTO `footers` VALUES (1,'#','#','#','#','logo-baru.png','081234567890','081234567890','info@cadaspageran.sch.id','Website Resmi SD Negeri Cadaspageran. Memberikan informasi pendidikan yang transparan dan akurat bagi seluruh warga sekolah.','2026-07-24 17:17:21','2026-07-24 17:31:57');
/*!40000 ALTER TABLE `footers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gurus`
--

DROP TABLE IF EXISTS `gurus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gurus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gurus_nip_unique` (`nip`),
  KEY `gurus_user_id_foreign` (`user_id`),
  CONSTRAINT `gurus_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gurus`
--

LOCK TABLES `gurus` WRITE;
/*!40000 ALTER TABLE `gurus` DISABLE KEYS */;
INSERT INTO `gurus` VALUES (2,8,'198847330614','Harjaya Wasita','Laki-laki','0328 8769 599','Kpg. Supono No. 640, Payakumbuh 93930, Sumsel','2026-07-24 09:19:34','2026-07-24 09:19:34'),(3,9,'198362248615','Empluk Harto Utama S.T.','Perempuan','0603 8544 6408','Ds. Lada No. 218, Madiun 45920, Sultra','2026-07-24 09:19:34','2026-07-24 09:19:34'),(4,10,'198348601622','Yoga Lamar Thamrin','Perempuan','0575 3402 369','Gg. Katamso No. 584, Pasuruan 43544, Aceh','2026-07-24 09:19:34','2026-07-24 09:19:34'),(5,11,'198681810853','Edward Prasetyo','Laki-laki','(+62) 844 1293 2210','Dk. Suryo Pranoto No. 117, Magelang 48133, Sulteng','2026-07-24 09:19:34','2026-07-24 09:19:34'),(6,12,'198182366646','Okto Setiawan S.Psi','Perempuan','(+62) 857 4182 0303','Kpg. Sutami No. 386, Tasikmalaya 20256, Lampung','2026-07-24 09:19:34','2026-07-24 09:19:34'),(7,58,'dummy_guru','Dummy Guru','Laki-laki','081234567890','Alamat Guru','2026-07-24 11:56:48','2026-07-24 11:56:48'),(8,59,'dummy_guru1784890453','Dummy Guru','Laki-laki','081234567890','Alamat Guru','2026-07-24 11:56:48','2026-07-24 11:56:48'),(9,60,'dummy_guru1784890581','Dummy Guru','Laki-laki','081234567890','Alamat Guru','2026-07-24 11:56:48','2026-07-24 11:56:48'),(10,63,'dummy_guru1784890611','Dummy Guru','Laki-laki','081234567890','Alamat Guru','2026-07-24 11:56:48','2026-07-24 11:56:48');
/*!40000 ALTER TABLE `gurus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_sliders`
--

DROP TABLE IF EXISTS `image_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_sliders`
--

LOCK TABLES `image_sliders` WRITE;
/*!40000 ALTER TABLE `image_sliders` DISABLE KEYS */;
INSERT INTO `image_sliders` VALUES (1,'slider-new.png','Selamat Datang di SD Negeri Cadaspangeran','Membangun generasi cerdas, mandiri, dan berkarakter unggul untuk masa depan bangsa.',0,'0','2026-07-24 17:48:21','2026-07-24 17:53:20');
/*!40000 ALTER TABLE `image_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwals`
--

DROP TABLE IF EXISTS `jadwals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jadwals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kelas_id` bigint(20) unsigned NOT NULL,
  `mata_pelajaran_id` bigint(20) unsigned NOT NULL,
  `guru_id` bigint(20) unsigned NOT NULL,
  `hari` varchar(255) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jadwals_kelas_id_foreign` (`kelas_id`),
  KEY `jadwals_mata_pelajaran_id_foreign` (`mata_pelajaran_id`),
  KEY `jadwals_guru_id_foreign` (`guru_id`),
  CONSTRAINT `jadwals_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `jadwals_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `jadwals_mata_pelajaran_id_foreign` FOREIGN KEY (`mata_pelajaran_id`) REFERENCES `mata_pelajarans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwals`
--

LOCK TABLES `jadwals` WRITE;
/*!40000 ALTER TABLE `jadwals` DISABLE KEYS */;
INSERT INTO `jadwals` VALUES (2,2,3,6,'Senin','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(3,2,7,6,'Senin','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(4,2,6,2,'Selasa','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(5,2,6,6,'Selasa','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(6,2,6,2,'Rabu','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(7,2,4,3,'Rabu','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(8,2,6,2,'Kamis','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(9,2,4,6,'Kamis','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(10,2,5,5,'Jumat','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(11,2,7,5,'Jumat','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(12,3,4,2,'Senin','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(13,3,7,4,'Senin','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(14,3,5,5,'Selasa','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(15,3,7,6,'Selasa','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(16,3,6,5,'Rabu','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(17,3,5,5,'Rabu','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(18,3,4,2,'Kamis','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(19,3,6,6,'Kamis','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(20,3,4,2,'Jumat','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(21,3,6,5,'Jumat','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(22,4,6,4,'Senin','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(23,4,6,4,'Senin','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(24,4,4,6,'Selasa','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(25,4,3,5,'Selasa','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(26,4,4,5,'Rabu','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(27,4,2,6,'Rabu','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(28,4,3,2,'Kamis','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(29,4,3,3,'Kamis','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(30,4,4,6,'Jumat','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(31,4,7,4,'Jumat','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(32,5,2,2,'Senin','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(33,5,4,6,'Senin','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(34,5,5,4,'Selasa','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(35,5,7,5,'Selasa','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(36,5,7,5,'Rabu','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(37,5,3,3,'Rabu','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(38,5,7,6,'Kamis','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(39,5,7,2,'Kamis','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(40,5,3,3,'Jumat','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(41,5,4,3,'Jumat','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(42,6,4,6,'Senin','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(43,6,2,6,'Senin','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(44,6,2,3,'Selasa','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(45,6,4,6,'Selasa','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(46,6,5,3,'Rabu','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(47,6,7,3,'Rabu','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(48,6,7,3,'Kamis','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(49,6,6,2,'Kamis','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(50,6,6,6,'Jumat','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(51,6,6,6,'Jumat','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(52,7,5,6,'Senin','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(53,7,5,4,'Senin','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(54,7,5,5,'Selasa','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(55,7,6,4,'Selasa','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(56,7,5,2,'Rabu','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(57,7,4,5,'Rabu','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(58,7,4,2,'Kamis','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(59,7,5,3,'Kamis','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(60,7,5,5,'Jumat','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(61,7,3,6,'Jumat','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(62,8,4,5,'Senin','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(63,8,2,5,'Senin','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(64,8,5,6,'Selasa','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(65,8,5,2,'Selasa','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(66,8,7,4,'Rabu','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(67,8,3,5,'Rabu','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(68,8,4,6,'Kamis','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(69,8,7,4,'Kamis','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(70,8,4,2,'Jumat','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(71,8,3,5,'Jumat','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(72,9,2,4,'Senin','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(73,9,7,3,'Senin','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(74,9,6,6,'Selasa','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(75,9,3,4,'Selasa','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(76,9,5,6,'Rabu','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(77,9,3,6,'Rabu','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(78,9,2,3,'Kamis','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(79,9,2,3,'Kamis','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(80,9,6,5,'Jumat','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(81,9,5,6,'Jumat','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(82,10,6,2,'Senin','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(83,10,4,4,'Senin','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(84,10,2,5,'Selasa','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(85,10,6,4,'Selasa','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(86,10,5,5,'Rabu','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(87,10,2,3,'Rabu','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(88,10,4,5,'Kamis','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(89,10,6,5,'Kamis','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(90,10,6,6,'Jumat','07:30:00','09:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37'),(91,10,7,2,'Jumat','09:30:00','11:00:00','2026-07-24 09:19:37','2026-07-24 09:19:37');
/*!40000 ALTER TABLE `jadwals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_beritas`
--

DROP TABLE IF EXISTS `kategori_beritas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_beritas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kategori_beritas_nama_unique` (`nama`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_beritas`
--

LOCK TABLES `kategori_beritas` WRITE;
/*!40000 ALTER TABLE `kategori_beritas` DISABLE KEYS */;
INSERT INTO `kategori_beritas` VALUES (1,'Akademik','0','2026-07-24 09:34:49','2026-07-24 09:34:49'),(2,'Prestasi','0','2026-07-24 09:34:49','2026-07-24 09:34:49'),(3,'Ekstrakurikuler','0','2026-07-24 09:34:49','2026-07-24 09:34:49'),(4,'Pengumuman','0','2026-07-24 09:34:49','2026-07-24 09:34:49'),(5,'Pendidikan','0','2026-07-24 17:17:59','2026-07-24 17:17:59');
/*!40000 ALTER TABLE `kategori_beritas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kegiatans`
--

DROP TABLE IF EXISTS `kegiatans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kegiatans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imagas` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kegiatans_nama_unique` (`nama`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kegiatans`
--

LOCK TABLES `kegiatans` WRITE;
/*!40000 ALTER TABLE `kegiatans` DISABLE KEYS */;
INSERT INTO `kegiatans` VALUES (1,'Ekstrakurikuler Pramuka','ekstrakurikuler-pramuka','pramuka.jpg','pramuka_imagas.jpg','Kegiatan pramuka di SD Negeri Cadaspageran bertujuan untuk membentuk karakter disiplin, mandiri, dan gotong royong.','0','2026-07-24 17:17:59','2026-07-24 17:24:32');
/*!40000 ALTER TABLE `kegiatans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(255) NOT NULL,
  `tahun_ajaran_id` bigint(20) unsigned NOT NULL,
  `wali_kelas_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kelas_tahun_ajaran_id_foreign` (`tahun_ajaran_id`),
  KEY `kelas_wali_kelas_id_foreign` (`wali_kelas_id`),
  CONSTRAINT `kelas_tahun_ajaran_id_foreign` FOREIGN KEY (`tahun_ajaran_id`) REFERENCES `tahun_ajarans` (`id`) ON DELETE CASCADE,
  CONSTRAINT `kelas_wali_kelas_id_foreign` FOREIGN KEY (`wali_kelas_id`) REFERENCES `gurus` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES (1,'Kelas 1A',1,NULL,'2026-07-24 09:01:03','2026-07-24 09:39:07'),(2,'1A',2,2,'2026-07-24 09:19:34','2026-07-24 09:19:34'),(3,'1B',2,2,'2026-07-24 09:19:34','2026-07-24 09:19:34'),(4,'2A',2,3,'2026-07-24 09:19:34','2026-07-24 09:19:34'),(5,'2B',2,6,'2026-07-24 09:19:34','2026-07-24 09:19:34'),(6,'3A',2,6,'2026-07-24 09:19:34','2026-07-24 09:19:34'),(7,'3B',2,5,'2026-07-24 09:19:34','2026-07-24 09:19:34'),(8,'4A',2,4,'2026-07-24 09:19:34','2026-07-24 09:19:34'),(9,'5A',2,2,'2026-07-24 09:19:34','2026-07-24 09:19:34'),(10,'6A',2,3,'2026-07-24 09:19:34','2026-07-24 09:19:34');
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mata_pelajarans`
--

DROP TABLE IF EXISTS `mata_pelajarans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mata_pelajarans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode_mapel` varchar(255) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mata_pelajarans_kode_mapel_unique` (`kode_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mata_pelajarans`
--

LOCK TABLES `mata_pelajarans` WRITE;
/*!40000 ALTER TABLE `mata_pelajarans` DISABLE KEYS */;
INSERT INTO `mata_pelajarans` VALUES (1,'mtk','matemaika','2026-07-24 09:02:17','2026-07-24 09:02:17'),(2,'MP001','Matematika','2026-07-24 09:18:46','2026-07-24 09:18:46'),(3,'MP002','Bahasa Indonesia','2026-07-24 09:18:46','2026-07-24 09:18:46'),(4,'MP003','Bahasa Inggris','2026-07-24 09:18:46','2026-07-24 09:18:46'),(5,'MP004','Ilmu Pengetahuan Alam','2026-07-24 09:18:46','2026-07-24 09:18:46'),(6,'MP005','Ilmu Pengetahuan Sosial','2026-07-24 09:18:46','2026-07-24 09:18:46'),(7,'MP006','Pendidikan Kewarganegaraan','2026-07-24 09:18:46','2026-07-24 09:18:46');
/*!40000 ALTER TABLE `mata_pelajarans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_03_22_182953_create_kegiatans_table',1),(6,'2022_03_23_040838_create_image_sliders_table',1),(7,'2022_03_23_052723_add_field_to_image_sliders_table',1),(8,'2022_03_23_065335_create_abouts_table',1),(9,'2022_03_23_074809_create_videos_table',1),(10,'2022_03_24_075737_create_kategori_beritas_table',1),(11,'2022_03_24_075900_create_beritas_table',1),(12,'2022_03_24_105758_create_events_table',1),(13,'2022_03_24_201826_add_field_to_events_table',1),(14,'2022_03_24_204322_create_footers_table',1),(15,'2022_03_25_102915_create_permission_tables',1),(16,'2022_03_27_074151_create_users_details_table',1),(17,'2022_03_27_094236_create_data_murids_table',1),(18,'2022_03_28_154339_create_profile_sekolahs_table',1),(19,'2022_03_28_161701_create_visimisis_table',1),(20,'2022_04_01_190600_add_field_to_data_murids',1),(21,'2022_08_01_080614_create_settings_table',1),(22,'2026_07_24_150228_create_tahun_ajarans_table',1),(23,'2026_07_24_150229_create_gurus_table',1),(24,'2026_07_24_150229_create_kelas_table',1),(25,'2026_07_24_150230_create_mata_pelajarans_table',1),(26,'2026_07_24_150230_create_siswas_table',1),(27,'2026_07_24_150231_create_jadwals_table',1),(28,'2026_07_24_150231_create_nilais_table',1),(29,'2026_07_24_172350_create_pendaftarans_table',2),(30,'2026_07_24_175544_update_user_role_enum',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(1,'App\\Models\\User',61),(1,'App\\Models\\User',64),(2,'App\\Models\\User',2),(2,'App\\Models\\User',4),(2,'App\\Models\\User',8),(2,'App\\Models\\User',9),(2,'App\\Models\\User',10),(2,'App\\Models\\User',11),(2,'App\\Models\\User',12),(2,'App\\Models\\User',58),(2,'App\\Models\\User',59),(2,'App\\Models\\User',60),(2,'App\\Models\\User',63),(3,'App\\Models\\User',3),(3,'App\\Models\\User',7),(3,'App\\Models\\User',13),(3,'App\\Models\\User',14),(3,'App\\Models\\User',15),(3,'App\\Models\\User',16),(3,'App\\Models\\User',17),(3,'App\\Models\\User',18),(3,'App\\Models\\User',19),(3,'App\\Models\\User',20),(3,'App\\Models\\User',21),(3,'App\\Models\\User',22),(3,'App\\Models\\User',23),(3,'App\\Models\\User',24),(3,'App\\Models\\User',25),(3,'App\\Models\\User',26),(3,'App\\Models\\User',27),(3,'App\\Models\\User',28),(3,'App\\Models\\User',29),(3,'App\\Models\\User',30),(3,'App\\Models\\User',31),(3,'App\\Models\\User',32),(3,'App\\Models\\User',33),(3,'App\\Models\\User',34),(3,'App\\Models\\User',35),(3,'App\\Models\\User',36),(3,'App\\Models\\User',37),(3,'App\\Models\\User',38),(3,'App\\Models\\User',39),(3,'App\\Models\\User',40),(3,'App\\Models\\User',41),(3,'App\\Models\\User',42),(3,'App\\Models\\User',43),(3,'App\\Models\\User',44),(3,'App\\Models\\User',45),(3,'App\\Models\\User',46),(3,'App\\Models\\User',47),(3,'App\\Models\\User',48),(3,'App\\Models\\User',49),(3,'App\\Models\\User',50),(3,'App\\Models\\User',51),(3,'App\\Models\\User',52),(3,'App\\Models\\User',53),(3,'App\\Models\\User',54),(3,'App\\Models\\User',55),(3,'App\\Models\\User',56),(3,'App\\Models\\User',57),(3,'App\\Models\\User',62),(3,'App\\Models\\User',65),(3,'App\\Models\\User',66);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilais`
--

DROP TABLE IF EXISTS `nilais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilais` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `siswa_id` bigint(20) unsigned NOT NULL,
  `mata_pelajaran_id` bigint(20) unsigned NOT NULL,
  `kelas_id` bigint(20) unsigned NOT NULL,
  `tahun_ajaran_id` bigint(20) unsigned NOT NULL,
  `jenis_nilai` varchar(255) NOT NULL,
  `nilai` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nilais_siswa_id_foreign` (`siswa_id`),
  KEY `nilais_mata_pelajaran_id_foreign` (`mata_pelajaran_id`),
  KEY `nilais_kelas_id_foreign` (`kelas_id`),
  KEY `nilais_tahun_ajaran_id_foreign` (`tahun_ajaran_id`),
  CONSTRAINT `nilais_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `nilais_mata_pelajaran_id_foreign` FOREIGN KEY (`mata_pelajaran_id`) REFERENCES `mata_pelajarans` (`id`) ON DELETE CASCADE,
  CONSTRAINT `nilais_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `nilais_tahun_ajaran_id_foreign` FOREIGN KEY (`tahun_ajaran_id`) REFERENCES `tahun_ajarans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilais`
--

LOCK TABLES `nilais` WRITE;
/*!40000 ALTER TABLE `nilais` DISABLE KEYS */;
INSERT INTO `nilais` VALUES (1,1,1,1,1,'UAS',54.00,'2026-07-24 09:03:55','2026-07-24 09:03:55'),(2,1,4,1,2,'Tugas',87.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(3,1,4,1,2,'UTS',82.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(4,1,4,1,2,'UAS',87.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(5,1,2,1,2,'Tugas',83.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(6,1,2,1,2,'UTS',98.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(7,1,2,1,2,'UAS',70.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(8,1,3,1,2,'Tugas',76.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(9,1,3,1,2,'UTS',68.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(10,1,3,1,2,'UAS',82.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(11,2,4,2,2,'Tugas',97.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(12,2,4,2,2,'UTS',98.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(13,2,4,2,2,'UAS',91.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(14,2,2,2,2,'Tugas',73.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(15,2,2,2,2,'UTS',97.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(16,2,2,2,2,'UAS',99.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(17,2,3,2,2,'Tugas',70.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(18,2,3,2,2,'UTS',95.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(19,2,3,2,2,'UAS',66.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(20,3,5,2,2,'Tugas',70.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(21,3,5,2,2,'UTS',71.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(22,3,5,2,2,'UAS',98.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(23,3,7,2,2,'Tugas',83.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(24,3,7,2,2,'UTS',93.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(25,3,7,2,2,'UAS',89.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(26,3,4,2,2,'Tugas',91.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(27,3,4,2,2,'UTS',66.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(28,3,4,2,2,'UAS',82.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(29,4,6,2,2,'Tugas',65.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(30,4,6,2,2,'UTS',81.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(31,4,6,2,2,'UAS',87.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(32,4,7,2,2,'Tugas',99.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(33,4,7,2,2,'UTS',94.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(34,4,7,2,2,'UAS',88.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(35,4,3,2,2,'Tugas',85.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(36,4,3,2,2,'UTS',70.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(37,4,3,2,2,'UAS',70.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(38,5,6,2,2,'Tugas',80.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(39,5,6,2,2,'UTS',68.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(40,5,6,2,2,'UAS',88.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(41,5,7,2,2,'Tugas',69.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(42,5,7,2,2,'UTS',90.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(43,5,7,2,2,'UAS',71.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(44,5,5,2,2,'Tugas',84.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(45,5,5,2,2,'UTS',75.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(46,5,5,2,2,'UAS',81.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(47,6,7,2,2,'Tugas',80.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(48,6,7,2,2,'UTS',88.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(49,6,7,2,2,'UAS',92.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(50,6,4,2,2,'Tugas',86.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(51,6,4,2,2,'UTS',93.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(52,6,4,2,2,'UAS',75.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(53,6,6,2,2,'Tugas',70.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(54,6,6,2,2,'UTS',66.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(55,6,6,2,2,'UAS',87.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(56,7,2,3,2,'Tugas',89.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(57,7,2,3,2,'UTS',96.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(58,7,2,3,2,'UAS',73.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(59,7,4,3,2,'Tugas',78.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(60,7,4,3,2,'UTS',87.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(61,7,4,3,2,'UAS',68.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(62,7,6,3,2,'Tugas',69.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(63,7,6,3,2,'UTS',98.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(64,7,6,3,2,'UAS',74.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(65,8,3,3,2,'Tugas',67.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(66,8,3,3,2,'UTS',81.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(67,8,3,3,2,'UAS',85.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(68,8,6,3,2,'Tugas',89.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(69,8,6,3,2,'UTS',85.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(70,8,6,3,2,'UAS',93.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(71,8,7,3,2,'Tugas',92.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(72,8,7,3,2,'UTS',81.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(73,8,7,3,2,'UAS',85.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(74,9,5,3,2,'Tugas',82.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(75,9,5,3,2,'UTS',67.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(76,9,5,3,2,'UAS',91.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(77,9,7,3,2,'Tugas',80.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(78,9,7,3,2,'UTS',82.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(79,9,7,3,2,'UAS',80.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(80,9,4,3,2,'Tugas',66.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(81,9,4,3,2,'UTS',99.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(82,9,4,3,2,'UAS',90.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(83,10,5,3,2,'Tugas',82.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(84,10,5,3,2,'UTS',100.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(85,10,5,3,2,'UAS',78.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(86,10,4,3,2,'Tugas',86.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(87,10,4,3,2,'UTS',100.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(88,10,4,3,2,'UAS',88.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(89,10,6,3,2,'Tugas',94.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(90,10,6,3,2,'UTS',78.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(91,10,6,3,2,'UAS',97.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(92,11,3,3,2,'Tugas',68.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(93,11,3,3,2,'UTS',89.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(94,11,3,3,2,'UAS',80.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(95,11,2,3,2,'Tugas',98.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(96,11,2,3,2,'UTS',86.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(97,11,2,3,2,'UAS',99.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(98,11,5,3,2,'Tugas',70.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(99,11,5,3,2,'UTS',80.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(100,11,5,3,2,'UAS',92.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(101,12,5,4,2,'Tugas',71.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(102,12,5,4,2,'UTS',70.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(103,12,5,4,2,'UAS',69.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(104,12,3,4,2,'Tugas',69.00,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(105,12,3,4,2,'UTS',86.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(106,12,3,4,2,'UAS',92.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(107,12,2,4,2,'Tugas',74.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(108,12,2,4,2,'UTS',66.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(109,12,2,4,2,'UAS',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(110,13,5,4,2,'Tugas',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(111,13,5,4,2,'UTS',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(112,13,5,4,2,'UAS',65.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(113,13,6,4,2,'Tugas',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(114,13,6,4,2,'UTS',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(115,13,6,4,2,'UAS',78.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(116,13,2,4,2,'Tugas',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(117,13,2,4,2,'UTS',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(118,13,2,4,2,'UAS',98.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(119,14,4,4,2,'Tugas',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(120,14,4,4,2,'UTS',100.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(121,14,4,4,2,'UAS',100.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(122,14,7,4,2,'Tugas',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(123,14,7,4,2,'UTS',73.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(124,14,7,4,2,'UAS',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(125,14,6,4,2,'Tugas',98.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(126,14,6,4,2,'UTS',94.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(127,14,6,4,2,'UAS',65.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(128,15,6,4,2,'Tugas',76.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(129,15,6,4,2,'UTS',75.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(130,15,6,4,2,'UAS',96.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(131,15,4,4,2,'Tugas',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(132,15,4,4,2,'UTS',79.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(133,15,4,4,2,'UAS',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(134,15,2,4,2,'Tugas',95.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(135,15,2,4,2,'UTS',67.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(136,15,2,4,2,'UAS',87.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(137,16,4,4,2,'Tugas',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(138,16,4,4,2,'UTS',76.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(139,16,4,4,2,'UAS',81.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(140,16,3,4,2,'Tugas',70.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(141,16,3,4,2,'UTS',82.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(142,16,3,4,2,'UAS',76.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(143,16,7,4,2,'Tugas',76.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(144,16,7,4,2,'UTS',99.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(145,16,7,4,2,'UAS',99.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(146,17,4,5,2,'Tugas',66.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(147,17,4,5,2,'UTS',86.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(148,17,4,5,2,'UAS',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(149,17,7,5,2,'Tugas',87.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(150,17,7,5,2,'UTS',70.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(151,17,7,5,2,'UAS',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(152,17,3,5,2,'Tugas',75.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(153,17,3,5,2,'UTS',71.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(154,17,3,5,2,'UAS',95.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(155,18,2,5,2,'Tugas',89.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(156,18,2,5,2,'UTS',95.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(157,18,2,5,2,'UAS',73.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(158,18,6,5,2,'Tugas',87.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(159,18,6,5,2,'UTS',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(160,18,6,5,2,'UAS',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(161,18,4,5,2,'Tugas',69.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(162,18,4,5,2,'UTS',71.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(163,18,4,5,2,'UAS',72.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(164,19,4,5,2,'Tugas',83.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(165,19,4,5,2,'UTS',91.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(166,19,4,5,2,'UAS',75.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(167,19,7,5,2,'Tugas',98.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(168,19,7,5,2,'UTS',69.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(169,19,7,5,2,'UAS',83.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(170,19,3,5,2,'Tugas',74.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(171,19,3,5,2,'UTS',91.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(172,19,3,5,2,'UAS',88.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(173,20,5,5,2,'Tugas',71.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(174,20,5,5,2,'UTS',85.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(175,20,5,5,2,'UAS',100.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(176,20,7,5,2,'Tugas',71.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(177,20,7,5,2,'UTS',89.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(178,20,7,5,2,'UAS',65.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(179,20,2,5,2,'Tugas',79.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(180,20,2,5,2,'UTS',97.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(181,20,2,5,2,'UAS',71.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(182,21,7,5,2,'Tugas',66.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(183,21,7,5,2,'UTS',99.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(184,21,7,5,2,'UAS',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(185,21,3,5,2,'Tugas',79.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(186,21,3,5,2,'UTS',67.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(187,21,3,5,2,'UAS',96.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(188,21,4,5,2,'Tugas',78.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(189,21,4,5,2,'UTS',70.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(190,21,4,5,2,'UAS',94.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(191,22,6,6,2,'Tugas',87.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(192,22,6,6,2,'UTS',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(193,22,6,6,2,'UAS',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(194,22,2,6,2,'Tugas',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(195,22,2,6,2,'UTS',86.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(196,22,2,6,2,'UAS',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(197,22,4,6,2,'Tugas',89.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(198,22,4,6,2,'UTS',85.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(199,22,4,6,2,'UAS',65.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(200,23,6,6,2,'Tugas',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(201,23,6,6,2,'UTS',67.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(202,23,6,6,2,'UAS',78.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(203,23,4,6,2,'Tugas',65.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(204,23,4,6,2,'UTS',83.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(205,23,4,6,2,'UAS',67.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(206,23,2,6,2,'Tugas',66.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(207,23,2,6,2,'UTS',95.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(208,23,2,6,2,'UAS',72.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(209,24,6,6,2,'Tugas',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(210,24,6,6,2,'UTS',97.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(211,24,6,6,2,'UAS',67.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(212,24,3,6,2,'Tugas',95.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(213,24,3,6,2,'UTS',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(214,24,3,6,2,'UAS',96.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(215,24,5,6,2,'Tugas',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(216,24,5,6,2,'UTS',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(217,24,5,6,2,'UAS',98.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(218,25,5,6,2,'Tugas',91.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(219,25,5,6,2,'UTS',78.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(220,25,5,6,2,'UAS',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(221,25,6,6,2,'Tugas',100.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(222,25,6,6,2,'UTS',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(223,25,6,6,2,'UAS',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(224,25,3,6,2,'Tugas',96.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(225,25,3,6,2,'UTS',96.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(226,25,3,6,2,'UAS',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(227,26,4,6,2,'Tugas',96.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(228,26,4,6,2,'UTS',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(229,26,4,6,2,'UAS',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(230,26,7,6,2,'Tugas',70.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(231,26,7,6,2,'UTS',69.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(232,26,7,6,2,'UAS',65.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(233,26,2,6,2,'Tugas',75.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(234,26,2,6,2,'UTS',73.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(235,26,2,6,2,'UAS',82.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(236,27,5,7,2,'Tugas',96.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(237,27,5,7,2,'UTS',89.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(238,27,5,7,2,'UAS',87.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(239,27,6,7,2,'Tugas',94.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(240,27,6,7,2,'UTS',97.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(241,27,6,7,2,'UAS',76.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(242,27,2,7,2,'Tugas',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(243,27,2,7,2,'UTS',82.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(244,27,2,7,2,'UAS',83.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(245,28,6,7,2,'Tugas',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(246,28,6,7,2,'UTS',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(247,28,6,7,2,'UAS',66.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(248,28,7,7,2,'Tugas',100.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(249,28,7,7,2,'UTS',78.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(250,28,7,7,2,'UAS',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(251,28,4,7,2,'Tugas',65.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(252,28,4,7,2,'UTS',78.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(253,28,4,7,2,'UAS',89.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(254,29,4,7,2,'Tugas',100.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(255,29,4,7,2,'UTS',79.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(256,29,4,7,2,'UAS',84.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(257,29,5,7,2,'Tugas',74.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(258,29,5,7,2,'UTS',72.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(259,29,5,7,2,'UAS',95.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(260,29,6,7,2,'Tugas',66.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(261,29,6,7,2,'UTS',100.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(262,29,6,7,2,'UAS',86.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(263,30,6,7,2,'Tugas',98.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(264,30,6,7,2,'UTS',95.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(265,30,6,7,2,'UAS',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(266,30,4,7,2,'Tugas',79.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(267,30,4,7,2,'UTS',75.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(268,30,4,7,2,'UAS',87.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(269,30,2,7,2,'Tugas',82.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(270,30,2,7,2,'UTS',67.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(271,30,2,7,2,'UAS',88.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(272,31,5,7,2,'Tugas',78.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(273,31,5,7,2,'UTS',97.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(274,31,5,7,2,'UAS',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(275,31,3,7,2,'Tugas',81.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(276,31,3,7,2,'UTS',96.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(277,31,3,7,2,'UAS',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(278,31,2,7,2,'Tugas',81.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(279,31,2,7,2,'UTS',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(280,31,2,7,2,'UAS',96.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(281,32,5,8,2,'Tugas',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(282,32,5,8,2,'UTS',91.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(283,32,5,8,2,'UAS',79.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(284,32,3,8,2,'Tugas',79.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(285,32,3,8,2,'UTS',94.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(286,32,3,8,2,'UAS',100.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(287,32,6,8,2,'Tugas',74.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(288,32,6,8,2,'UTS',83.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(289,32,6,8,2,'UAS',65.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(290,33,6,8,2,'Tugas',71.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(291,33,6,8,2,'UTS',91.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(292,33,6,8,2,'UAS',78.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(293,33,3,8,2,'Tugas',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(294,33,3,8,2,'UTS',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(295,33,3,8,2,'UAS',71.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(296,33,2,8,2,'Tugas',75.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(297,33,2,8,2,'UTS',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(298,33,2,8,2,'UAS',84.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(299,34,4,8,2,'Tugas',86.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(300,34,4,8,2,'UTS',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(301,34,4,8,2,'UAS',87.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(302,34,7,8,2,'Tugas',87.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(303,34,7,8,2,'UTS',88.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(304,34,7,8,2,'UAS',97.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(305,34,6,8,2,'Tugas',73.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(306,34,6,8,2,'UTS',95.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(307,34,6,8,2,'UAS',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(308,35,3,8,2,'Tugas',79.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(309,35,3,8,2,'UTS',76.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(310,35,3,8,2,'UAS',86.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(311,35,7,8,2,'Tugas',95.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(312,35,7,8,2,'UTS',78.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(313,35,7,8,2,'UAS',99.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(314,35,5,8,2,'Tugas',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(315,35,5,8,2,'UTS',66.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(316,35,5,8,2,'UAS',71.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(317,36,7,8,2,'Tugas',99.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(318,36,7,8,2,'UTS',66.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(319,36,7,8,2,'UAS',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(320,36,5,8,2,'Tugas',94.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(321,36,5,8,2,'UTS',88.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(322,36,5,8,2,'UAS',65.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(323,36,2,8,2,'Tugas',94.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(324,36,2,8,2,'UTS',71.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(325,36,2,8,2,'UAS',71.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(326,37,6,9,2,'Tugas',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(327,37,6,9,2,'UTS',74.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(328,37,6,9,2,'UAS',83.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(329,37,7,9,2,'Tugas',86.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(330,37,7,9,2,'UTS',100.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(331,37,7,9,2,'UAS',74.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(332,37,4,9,2,'Tugas',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(333,37,4,9,2,'UTS',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(334,37,4,9,2,'UAS',97.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(335,38,6,9,2,'Tugas',83.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(336,38,6,9,2,'UTS',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(337,38,6,9,2,'UAS',69.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(338,38,2,9,2,'Tugas',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(339,38,2,9,2,'UTS',97.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(340,38,2,9,2,'UAS',74.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(341,38,4,9,2,'Tugas',82.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(342,38,4,9,2,'UTS',89.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(343,38,4,9,2,'UAS',75.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(344,39,7,9,2,'Tugas',73.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(345,39,7,9,2,'UTS',98.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(346,39,7,9,2,'UAS',74.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(347,39,6,9,2,'Tugas',93.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(348,39,6,9,2,'UTS',85.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(349,39,6,9,2,'UAS',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(350,39,3,9,2,'Tugas',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(351,39,3,9,2,'UTS',94.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(352,39,3,9,2,'UAS',97.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(353,40,4,9,2,'Tugas',87.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(354,40,4,9,2,'UTS',82.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(355,40,4,9,2,'UAS',87.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(356,40,2,9,2,'Tugas',92.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(357,40,2,9,2,'UTS',94.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(358,40,2,9,2,'UAS',88.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(359,40,3,9,2,'Tugas',83.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(360,40,3,9,2,'UTS',74.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(361,40,3,9,2,'UAS',88.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(362,41,2,9,2,'Tugas',78.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(363,41,2,9,2,'UTS',79.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(364,41,2,9,2,'UAS',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(365,41,4,9,2,'Tugas',82.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(366,41,4,9,2,'UTS',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(367,41,4,9,2,'UAS',89.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(368,41,6,9,2,'Tugas',75.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(369,41,6,9,2,'UTS',66.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(370,41,6,9,2,'UAS',88.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(371,42,2,10,2,'Tugas',100.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(372,42,2,10,2,'UTS',81.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(373,42,2,10,2,'UAS',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(374,42,6,10,2,'Tugas',89.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(375,42,6,10,2,'UTS',86.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(376,42,6,10,2,'UAS',89.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(377,42,7,10,2,'Tugas',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(378,42,7,10,2,'UTS',86.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(379,42,7,10,2,'UAS',98.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(380,43,2,10,2,'Tugas',92.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(381,43,2,10,2,'UTS',66.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(382,43,2,10,2,'UAS',81.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(383,43,3,10,2,'Tugas',86.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(384,43,3,10,2,'UTS',90.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(385,43,3,10,2,'UAS',85.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(386,43,6,10,2,'Tugas',78.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(387,43,6,10,2,'UTS',94.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(388,43,6,10,2,'UAS',84.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(389,44,3,10,2,'Tugas',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(390,44,3,10,2,'UTS',88.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(391,44,3,10,2,'UAS',96.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(392,44,7,10,2,'Tugas',83.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(393,44,7,10,2,'UTS',100.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(394,44,7,10,2,'UAS',99.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(395,44,5,10,2,'Tugas',100.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(396,44,5,10,2,'UTS',68.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(397,44,5,10,2,'UAS',98.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(398,45,4,10,2,'Tugas',82.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(399,45,4,10,2,'UTS',75.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(400,45,4,10,2,'UAS',94.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(401,45,3,10,2,'Tugas',81.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(402,45,3,10,2,'UTS',70.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(403,45,3,10,2,'UAS',86.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(404,45,6,10,2,'Tugas',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(405,45,6,10,2,'UTS',78.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(406,45,6,10,2,'UAS',95.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(407,46,2,10,2,'Tugas',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(408,46,2,10,2,'UTS',84.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(409,46,2,10,2,'UAS',69.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(410,46,4,10,2,'Tugas',73.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(411,46,4,10,2,'UTS',80.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(412,46,4,10,2,'UAS',77.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(413,46,5,10,2,'Tugas',98.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(414,46,5,10,2,'UTS',97.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(415,46,5,10,2,'UAS',84.00,'2026-07-24 09:19:38','2026-07-24 09:19:38'),(416,21,1,3,1,'Tugas',76.00,'2026-07-24 15:58:08','2026-07-24 15:58:08');
/*!40000 ALTER TABLE `nilais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pendaftarans`
--

DROP TABLE IF EXISTS `pendaftarans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pendaftarans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(255) NOT NULL,
  `nama_panggilan` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `ttl` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `kewarganegaraan` enum('WNI','WNA') NOT NULL,
  `anak_ke` varchar(255) NOT NULL,
  `berat_badan` varchar(255) NOT NULL,
  `tinggi_badan` varchar(255) NOT NULL,
  `penyakit_khusus` varchar(255) DEFAULT NULL,
  `nama_ayah` varchar(255) NOT NULL,
  `pekerjaan_ayah` varchar(255) NOT NULL,
  `pendidikan_ayah` varchar(255) NOT NULL,
  `kewarganegaraan_ayah` enum('WNI','WNA') NOT NULL,
  `nohp_ayah` varchar(255) NOT NULL,
  `email_ayah` varchar(255) NOT NULL,
  `penghasilan_ayah` varchar(255) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `pekerjaan_ibu` varchar(255) NOT NULL,
  `pendidikan_ibu` varchar(255) NOT NULL,
  `kewarganegaraan_ibu` enum('WNI','WNA') NOT NULL,
  `agama` varchar(255) NOT NULL,
  `nohp_ibu` varchar(255) NOT NULL,
  `penghasilan_ibu` varchar(255) NOT NULL,
  `file_akte` varchar(255) DEFAULT NULL,
  `file_bukti_tf` varchar(255) DEFAULT NULL,
  `harapan_ortu` text NOT NULL,
  `status_pendaftaran` enum('Pending','Diterima','Ditolak') NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pendaftarans`
--

LOCK TABLES `pendaftarans` WRITE;
/*!40000 ALTER TABLE `pendaftarans` DISABLE KEYS */;
INSERT INTO `pendaftarans` VALUES (1,'M. Reno Hidayat','huhuh','Laki-Laki','uuhuhu','uhuh','WNI','uuhuh','87','76','ubbb','uuub','hihi','SMA/SMK','WNI','hhuhuh','hidayatreno085@gmail.com','15 - 20 Juta','ijij','uuuhu','S1','WNI','ijiji','1234555665665','5 - 10 Juta','1784889310_akte_guru_laki.png','1784889310_tf_guru_laki.png','huhuhuhuh','Ditolak','2026-07-24 10:35:10','2026-07-24 10:35:43');
/*!40000 ALTER TABLE `pendaftarans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile_sekolahs`
--

DROP TABLE IF EXISTS `profile_sekolahs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_sekolahs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile_sekolahs`
--

LOCK TABLES `profile_sekolahs` WRITE;
/*!40000 ALTER TABLE `profile_sekolahs` DISABLE KEYS */;
INSERT INTO `profile_sekolahs` VALUES (1,'PROFIL SD NEGERI CADASPAGERAN','SD Negeri Cadaspageran merupakan salah satu sekolah dasar negeri yang berada di bawah naungan Dinas Pendidikan setempat. Kami memiliki fasilitas yang memadai dan tenaga pengajar yang profesional dalam bidangnya.','profile.jpg','2026-07-24 17:17:21','2026-07-24 17:23:34');
/*!40000 ALTER TABLE `profile_sekolahs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','web','2026-07-24 08:05:27','2026-07-24 08:05:27'),(2,'Guru','web','2026-07-24 08:05:27','2026-07-24 08:05:27'),(3,'Siswa','web','2026-07-24 08:05:27','2026-07-24 08:05:27');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `isEmail` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_user_id_foreign` (`user_id`),
  CONSTRAINT `settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,0,NULL,1,'2026-07-24 08:05:27','2026-07-24 08:05:27');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siswas`
--

DROP TABLE IF EXISTS `siswas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siswas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `kelas_id` bigint(20) unsigned DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `siswas_nis_unique` (`nis`),
  KEY `siswas_user_id_foreign` (`user_id`),
  KEY `siswas_kelas_id_foreign` (`kelas_id`),
  CONSTRAINT `siswas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `siswas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswas`
--

LOCK TABLES `siswas` WRITE;
/*!40000 ALTER TABLE `siswas` DISABLE KEYS */;
INSERT INTO `siswas` VALUES (1,7,'1234567898765','M. Reno Hidayatrr','Laki-laki',1,'asdfg',NULL,'Aktif','2026-07-24 09:01:48','2026-07-24 15:51:11'),(2,13,'202468578','Gasti Laras Hartati','Laki-laki',2,'Ds. Banal No. 277, Cirebon 31101, NTT','(+62) 739 0520 093','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(3,14,'202413482','Yulia Pratiwi','Laki-laki',2,'Gg. Pasir Koja No. 381, Blitar 29336, Kalteng','(+62) 20 3289 371','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(4,15,'202428032','Jessica Ratna Usada M.M.','Laki-laki',2,'Jr. Qrisdoren No. 46, Sibolga 94778, Sulsel','(+62) 870 297 696','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(5,16,'202413680','Paramita Lidya Permata','Perempuan',2,'Jr. Sentot Alibasa No. 842, Parepare 37236, Sumbar','0205 9046 9116','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(6,17,'202481013','Nabila Shakila Riyanti S.Sos','Perempuan',2,'Ds. Bakau No. 701, Kotamobagu 11261, Babel','(+62) 21 4907 1627','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(7,18,'202415381','Elon Jumari Hutasoit M.Farm','Laki-laki',3,'Jln. Bayam No. 624, Kupang 72665, Banten','(+62) 661 2576 813','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(8,19,'202417584','Jarwi Prasetyo','Perempuan',3,'Ds. Batako No. 220, Administrasi Jakarta Utara 59994, Jatim','(+62) 654 5975 9290','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(9,20,'202443113','Zelaya Azalea Rahimah','Perempuan',3,'Jln. Reksoninten No. 382, Sawahlunto 87249, Jateng','0426 6814 4026','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(10,21,'202418737','Gandi Pradana','Laki-laki',3,'Psr. Jend. A. Yani No. 573, Padang 16725, Jambi','(+62) 812 285 288','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(11,22,'202482592','Umaya Umaya Santoso S.Ked','Perempuan',3,'Jr. Ujung No. 950, Subulussalam 46252, Sulbar','(+62) 620 3460 218','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(12,23,'202451825','Ani Tina Zulaika','Perempuan',4,'Psr. Pintu Besar Selatan No. 161, Depok 88142, Riau','0983 0356 847','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(13,24,'202455536','Karen Farida','Laki-laki',4,'Kpg. Bak Mandi No. 93, Tomohon 95982, Jatim','0922 1650 678','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(14,25,'202463787','Vera Yolanda','Perempuan',4,'Jr. Ekonomi No. 554, Denpasar 57853, Jabar','0290 8251 3659','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(15,26,'202472115','Kusuma Natsir','Perempuan',4,'Jln. Rumah Sakit No. 245, Tomohon 62929, Kepri','(+62) 833 2119 9435','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(16,27,'202440435','Luwes Sitorus','Laki-laki',4,'Jln. Baik No. 785, Subulussalam 63792, Papua','0538 7688 6321','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(17,28,'202412538','Sari Suartini','Perempuan',5,'Ki. Babah No. 920, Yogyakarta 95589, Riau','(+62) 582 3610 4636','Aktif','2026-07-24 09:19:35','2026-07-24 09:19:35'),(18,29,'202430823','Sakti Leo Dabukke','Laki-laki',5,'Ds. Ters. Kiaracondong No. 884, Administrasi Jakarta Utara 25826, Bengkulu','(+62) 217 9899 5786','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(19,30,'202450292','Wani Pudjiastuti','Perempuan',5,'Psr. Babadak No. 617, Sabang 74643, Jambi','(+62) 802 7678 076','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(20,31,'202428257','Hana Kusmawati M.M.','Perempuan',5,'Jr. Sutan Syahrir No. 946, Administrasi Jakarta Utara 77606, Sulbar','026 0006 6775','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(21,32,'202408606','Daruna Samosir','Perempuan',5,'Jr. Bakti No. 337, Manado 14725, Maluku','(+62) 299 2721 5727','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(22,33,'202407062','Gamanto Kuswoyo','Perempuan',6,'Jr. Cikutra Barat No. 191, Magelang 54737, Sumut','(+62) 23 7335 570','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(23,34,'202432808','Reza Irawan','Laki-laki',6,'Ki. Laksamana No. 64, Cirebon 59402, Sulbar','(+62) 961 6781 005','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(24,35,'202404438','Ghaliyati Usada','Perempuan',6,'Ds. Bazuka Raya No. 473, Jambi 37417, Malut','0220 5771 0467','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(25,36,'202444077','Gasti Nova Puspasari S.Kom','Laki-laki',6,'Ki. Pattimura No. 67, Tomohon 35711, Sulteng','(+62) 481 8355 425','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(26,37,'202499412','Kamidin Waluyo','Perempuan',6,'Gg. Dahlia No. 43, Tangerang 85389, Sumut','0353 5403 017','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(27,38,'202427356','Prayoga Dongoran','Laki-laki',7,'Kpg. Labu No. 40, Tarakan 81358, Sulsel','0731 9461 282','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(28,39,'202426749','Jamal Wasita','Perempuan',7,'Ds. Honggowongso No. 183, Sukabumi 68690, Riau','0785 3500 5499','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(29,40,'202485077','Citra Yani Farida','Perempuan',7,'Ds. Acordion No. 917, Binjai 41353, Sulsel','0928 9379 5784','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(30,41,'202403397','Zamira Dalima Hariyah M.TI.','Laki-laki',7,'Dk. Gajah Mada No. 687, Jayapura 27118, Papua','(+62) 888 7965 494','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(31,42,'202475726','Warsita Wahyudin','Perempuan',7,'Gg. Imam Bonjol No. 85, Blitar 61164, Kepri','(+62) 960 2876 950','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(32,43,'202497531','Ellis Shania Mandasari','Laki-laki',8,'Dk. Panjaitan No. 287, Makassar 99674, Kalsel','(+62) 688 7003 2066','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(33,44,'202456002','Dian Laksmiwati S.Psi','Perempuan',8,'Ki. Moch. Ramdan No. 334, Bukittinggi 62842, Bali','(+62) 632 2235 014','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(34,45,'202478828','Gaiman Saputra','Perempuan',8,'Dk. Lada No. 79, Kupang 90562, NTB','(+62) 873 728 637','Aktif','2026-07-24 09:19:36','2026-07-24 09:19:36'),(35,46,'202444529','Eli Mayasari','Perempuan',8,'Jln. Arifin No. 125, Tanjung Pinang 71726, Riau','(+62) 665 7251 5194','Aktif','2026-07-24 09:19:37','2026-07-24 09:19:37'),(36,47,'202414849','Irma Hartati','Perempuan',8,'Kpg. Wahid Hasyim No. 645, Lhokseumawe 50011, Malut','(+62) 689 4525 869','Aktif','2026-07-24 09:19:37','2026-07-24 09:19:37'),(37,48,'202430697','Adinata Jailani M.Pd','Laki-laki',9,'Kpg. Basoka No. 145, Pontianak 53602, NTB','0616 6902 674','Aktif','2026-07-24 09:19:37','2026-07-24 09:19:37'),(38,49,'202488755','Cakrawangsa Nainggolan','Perempuan',9,'Jr. Pelajar Pejuang 45 No. 102, Banda Aceh 40262, Sultra','(+62) 965 6444 321','Aktif','2026-07-24 09:19:37','2026-07-24 09:19:37'),(39,50,'202473075','Dadap Iswahyudi','Perempuan',9,'Kpg. Basmol Raya No. 642, Surabaya 10931, Bengkulu','(+62) 939 9666 111','Aktif','2026-07-24 09:19:37','2026-07-24 09:19:37'),(40,51,'202469726','Kurnia Pratama','Laki-laki',9,'Ds. Wahidin No. 658, Yogyakarta 89491, Jambi','(+62) 792 0660 611','Aktif','2026-07-24 09:19:37','2026-07-24 09:19:37'),(41,52,'202473166','Raisa Rahimah','Laki-laki',9,'Dk. Bata Putih No. 853, Sabang 16681, Kaltim','0427 4118 430','Aktif','2026-07-24 09:19:37','2026-07-24 09:19:37'),(42,53,'202439770','Pranata Gamblang Marpaung','Perempuan',10,'Ds. Bata Putih No. 326, Bima 29306, Sumut','(+62) 265 3249 5418','Aktif','2026-07-24 09:19:37','2026-07-24 09:19:37'),(43,54,'202454081','Salwa Cindy Safitri S.T.','Perempuan',10,'Dk. Tubagus Ismail No. 290, Administrasi Jakarta Utara 94410, Sulbar','0370 3643 656','Aktif','2026-07-24 09:19:37','2026-07-24 09:19:37'),(44,55,'202416760','Oliva Hasanah','Perempuan',10,'Kpg. Ters. Buah Batu No. 551, Pematangsiantar 66434, Kalsel','0808 368 679','Aktif','2026-07-24 09:19:37','2026-07-24 09:19:37'),(45,56,'202416744','Dodo Pangestu Anggriawan','Perempuan',10,'Dk. Elang No. 222, Depok 64332, Kalbar','(+62) 477 1581 463','Aktif','2026-07-24 09:19:37','2026-07-24 09:19:37'),(46,57,'202456402','Jinawi Hutapea S.Sos','Perempuan',10,'Psr. Yap Tjwan Bing No. 876, Cilegon 68994, Sumut','(+62) 828 2057 088','Aktif','2026-07-24 09:19:37','2026-07-24 09:19:37'),(47,66,'12345678','Siswa Test','Laki-laki',1,NULL,NULL,'Aktif','2026-07-24 11:52:47','2026-07-24 11:52:47'),(48,3,'siswa','Siswa SD Cadas Pangeran','Laki-laki',1,NULL,NULL,'Aktif','2026-07-24 11:54:42','2026-07-24 11:54:42'),(49,62,'dummy_siswa1784890582','Dummy Siswa','Laki-laki',1,NULL,NULL,'Aktif','2026-07-24 11:54:42','2026-07-24 11:54:42'),(50,65,'dummy_siswa1784890611','Dummy Siswa','Laki-laki',1,NULL,NULL,'Aktif','2026-07-24 11:54:42','2026-07-24 11:54:42');
/*!40000 ALTER TABLE `siswas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tahun_ajarans`
--

DROP TABLE IF EXISTS `tahun_ajarans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tahun_ajarans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `semester` enum('Ganjil','Genap') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tahun_ajarans`
--

LOCK TABLES `tahun_ajarans` WRITE;
/*!40000 ALTER TABLE `tahun_ajarans` DISABLE KEYS */;
INSERT INTO `tahun_ajarans` VALUES (1,'2023/2024','Genap',1,'2026-07-24 08:48:47','2026-07-24 08:48:47'),(2,'2024/2025','Ganjil',1,'2026-07-24 09:18:46','2026-07-24 09:18:46');
/*!40000 ALTER TABLE `tahun_ajarans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Admin','Guru','Siswa','Staf','PPDB','Perpustakaan','Bendahara','Guest','Alumni') DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL,
  `foto_profile` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Kepala Sekolah','198001012005011001','kepsek@sch.id','Admin','Aktif',NULL,NULL,'$2y$10$sAxKaIPcqdR4AzxL8lJbkO0YPXU8sXttth7aDlR3oZ93kCTtaYE1.',NULL,'2026-07-24 08:05:27','2026-07-24 16:50:06'),(3,'Siswa SD Cadas Pangeran','siswa','siswa@sch.id','Siswa','Aktif',NULL,NULL,'$2y$10$l2pHpuwLnbpj0aP9B.w2eOPq3nu7RlOV0DkVGwGgu9EjPS/h8E4kG',NULL,'2026-07-24 08:05:27','2026-07-24 08:05:27'),(7,'M. Reno Hidayatrr','1234567898765','1234567898765@sch.id','Siswa','Aktif','1784883708_Cuplikan layar 2026-07-18 044222.jpg',NULL,'$2y$10$QdCkFfoZDZUw3I/BYOV3ROtdPzlWrfRrLRHnKAU4E2OfCt1Nt07em',NULL,'2026-07-24 09:01:48','2026-07-24 16:00:16'),(8,'Harjaya Wasita','guru1','guru1@guru.com','Guru','Aktif','guru_laki.png',NULL,'$2y$10$1zP/Kpao.mEerhEOPRn3ZOG99o4FZ2ND1dvI3ngvH4VTfxfRMajJ6',NULL,'2026-07-24 09:19:34','2026-07-24 09:23:59'),(9,'Empluk Harto Utama S.T.','guru2','guru2@guru.com','Guru','Aktif','guru_perempuan.png',NULL,'$2y$10$3VEDG4R.5viUu22GLJjw.uGMklR0UJQHUUsa1K/s.AsyBW1gT8acK',NULL,'2026-07-24 09:19:34','2026-07-24 09:23:59'),(10,'Yoga Lamar Thamrin','guru3','guru3@guru.com','Guru','Aktif','guru_perempuan.png',NULL,'$2y$10$u3sBrbGkkx3.kCIPQHbmJOX1v9h0d5XTEyXEMPuM8FtHpASTdCDTe',NULL,'2026-07-24 09:19:34','2026-07-24 09:23:59'),(11,'Edward Prasetyo','guru4','guru4@guru.com','Guru','Aktif','guru_laki.png',NULL,'$2y$10$JXhe0k3JCNco1TcmXbXSLeQak9ixtBOAwRKNMrFAei00WcL6ZwscG',NULL,'2026-07-24 09:19:34','2026-07-24 09:23:59'),(12,'Okto Setiawan S.Psi','guru5','guru5@guru.com','Guru','Aktif','guru_perempuan.png',NULL,'$2y$10$Boj6K2tydOHeI2BUO3GPUug/zAyUWai02BEv.XI21rycpcn.lyXd6',NULL,'2026-07-24 09:19:34','2026-07-24 09:23:59'),(13,'Gasti Laras Hartati','siswa_2_0','siswa_2_0@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$8n3JiZuJ915X2ngjxlqXR.k90n6JTEL7h6xmPEdRioY1AEBlct.ji',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(14,'Yulia Pratiwi','siswa_2_1','siswa_2_1@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$zPahrX19zb4S5BC9KjN/ku/XYW0.5K3zM2AMwZZ5InsyGSPfJOf8m',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(15,'Jessica Ratna Usada M.M.','siswa_2_2','siswa_2_2@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$EWzeByQ9.h8YrPnpOO6JF.HugwJc12Sn8qddSCKkfLe91Mt5dOdo2',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(16,'Paramita Lidya Permata','siswa_2_3','siswa_2_3@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$hPw82ToXrCGQ313Oqi0bDuTyov3FTFG.0sCngFPfRckplbY0z.k0u',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(17,'Nabila Shakila Riyanti S.Sos','siswa_2_4','siswa_2_4@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$WxC0KqAi5L1bO9u.4FZoTevIll4e2OKBJr4uPvmYwCfi3QRfH0Z9.',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(18,'Elon Jumari Hutasoit M.Farm','siswa_3_0','siswa_3_0@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$kiGrSZkkvaQKBL8mVhoifeCebO/UkdG4hbmi1MhmZSPH77chTq0gW',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(19,'Jarwi Prasetyo','siswa_3_1','siswa_3_1@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$3wOeOZcgn0/pD/srl3l/uu/qYTmCZDUc8RS5uvJfSwLrn2od7zzcK',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(20,'Zelaya Azalea Rahimah','siswa_3_2','siswa_3_2@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$7JZnrpM6XsX394GuFmW0JOX7OImkNH5jcj.U8n7/VdsJkGmhfgrFq',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(21,'Gandi Pradana','siswa_3_3','siswa_3_3@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$KxncUTu7q9kMormft1qlQOtWkKeH23dn2zi1C3Qtv/H2nMHONzKhC',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(22,'Umaya Umaya Santoso S.Ked','siswa_3_4','siswa_3_4@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$GHqWHhtyizfzqbHqzgH7resH/WAf2S.noFtHSnOBKf2rUITJ2vAOC',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(23,'Ani Tina Zulaika','siswa_4_0','siswa_4_0@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$8DIVEOCkFsOSTL/kQME4gOsK3AkMdQ04Um4EWX568V7ZMB9YITnOO',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(24,'Karen Farida','siswa_4_1','siswa_4_1@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$mnqFG7YfKFpVYxdUg/5nBeLQtYvHHwlASVwITOItXmzoxfkRs/2sy',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(25,'Vera Yolanda','siswa_4_2','siswa_4_2@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$IL3YQf3Qy.GO..TNYOrQB.aO82U.wDDYkVVVALiVSICGPPyf3UseW',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(26,'Kusuma Natsir','siswa_4_3','siswa_4_3@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$z7EhMVEJJwBWLgFsCazazukT7TGfe7E0YKSfDWv7mW7Z2pFkVqqX2',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(27,'Luwes Sitorus','siswa_4_4','siswa_4_4@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$LANcNmPdOG9EhnlkWEkN8uh17EAyfswbIBGHjDRsMS8NETEINqjIO',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(28,'Sari Suartini','siswa_5_0','siswa_5_0@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$Flh6t1kJIhFs4.iJWx2v0uztzN/MpI7h25RfK81eVS7feghDm6iJ2',NULL,'2026-07-24 09:19:35','2026-07-24 09:19:35'),(29,'Sakti Leo Dabukke','siswa_5_1','siswa_5_1@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$cmE3D3BvEWniyDg0O0cUh.PYTQBNnFUGiH1Hym2gVdTe48TNobssa',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(30,'Wani Pudjiastuti','siswa_5_2','siswa_5_2@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$7rXHVQfidEPiDroRszSMm.ntKEkueMrQIXMCM43.Ynx7L5ZZ77uOO',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(31,'Hana Kusmawati M.M.','siswa_5_3','siswa_5_3@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$.B9IutK.NFz.800VGs85a.7q2989nTp9l28ye.HlelneVwy/AN05i',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(32,'Daruna Samosir','siswa_5_4','siswa_5_4@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$Jr8d.p.3Q9ilY79rbM4bBOv.v4FDjaO0D.K8V5KpSZrq9iInHR8Dq',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(33,'Gamanto Kuswoyo','siswa_6_0','siswa_6_0@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$6EQKlZnHBXPYlWSfVumUBOgWk3LzyMLDbC7O43qu8eLIQj5eKM.H.',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(34,'Reza Irawan','siswa_6_1','siswa_6_1@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$l3MVGKM0MJQescvr2uOZsu57NBzJ4rBOaZnYTA7sate3.jtCvHNaa',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(35,'Ghaliyati Usada','siswa_6_2','siswa_6_2@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$QjtLaWICld2k.imBFuSwUeu.IXX3UO6ezCU5LULP6t.cKSHgEl8rm',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(36,'Gasti Nova Puspasari S.Kom','siswa_6_3','siswa_6_3@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$fhnUpUTqPX32rGFda5KcUekg6j2fcPkCvHw0LR30wNWzGTXC4s/bO',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(37,'Kamidin Waluyo','siswa_6_4','siswa_6_4@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$1.ArTNSFZS/cubNfWdJ3uuoNrHeML.oFLhy6j5FV2e9Q2eMTjwhjS',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(38,'Prayoga Dongoran','siswa_7_0','siswa_7_0@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$BRSSPoqFyFqZVyS36uygQOMtOz8r3ttyubdVrpJy3mbfCKojpXhhi',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(39,'Jamal Wasita','siswa_7_1','siswa_7_1@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$jWIasyfp74njQOyDJktKjea/c0Zs3aKkKXSxoEMcgVclythStvq6i',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(40,'Citra Yani Farida','siswa_7_2','siswa_7_2@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$jekX.vNfy2bMxxBy77sm.Ol65BKTx6eLjKdmSUrN9dkbMhcLh9f.m',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(41,'Zamira Dalima Hariyah M.TI.','siswa_7_3','siswa_7_3@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$8afzlpokK0pl3gK8q.CQKuy7JlMSKtVPKkR2uP2YQ.huMHSiHPCW.',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(42,'Warsita Wahyudin','siswa_7_4','siswa_7_4@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$BKUUDvZHuAN3cqS2OG3.8.PgIycMiXrUQqh4ow2WTvb3.Kjl8USDa',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(43,'Ellis Shania Mandasari','siswa_8_0','siswa_8_0@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$ptKneYT68uyI98OaRz3tYeYZdi7Q3o168HrM8Ul46p/YYTjNx2Dy.',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(44,'Dian Laksmiwati S.Psi','siswa_8_1','siswa_8_1@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$XrHJGDJCmb/xql6Gws7R4uEV1WUmLK0A3KAvzZq7LKPKaxckJlL5u',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(45,'Gaiman Saputra','siswa_8_2','siswa_8_2@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$zaZ4cAjXusGuBnNq1yT.We1vnCx.8wJrCsqVsdD0wgtWIli8d8qnK',NULL,'2026-07-24 09:19:36','2026-07-24 09:19:36'),(46,'Eli Mayasari','siswa_8_3','siswa_8_3@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$YG4EV1scgly1nGFmHq3kL.HuHEN5iP81aaUzaYP14Dir3CMghruyG',NULL,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(47,'Irma Hartati','siswa_8_4','siswa_8_4@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$KHoKEPLDpvMAwLsmeq2eNeOWgjzYKUdWD5E7ayfc/eqCWJkx0Klgq',NULL,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(48,'Adinata Jailani M.Pd','siswa_9_0','siswa_9_0@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$QbJK8TZfqLd1w0YcaXZsEuDgoMTMWwyrt/yE3mVFMnqV26rqnuQt.',NULL,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(49,'Cakrawangsa Nainggolan','siswa_9_1','siswa_9_1@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$n4gPFS7GfkyeRywdwyTGn.xGd4.QTI7s9ARR9HMQPwRc2Rg4gCTuK',NULL,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(50,'Dadap Iswahyudi','siswa_9_2','siswa_9_2@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$tg8nT2WKR7yPem1QTr3b/OXv6I2DQYb/rmgdtrU5pcFbPpLlD9M1W',NULL,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(51,'Kurnia Pratama','siswa_9_3','siswa_9_3@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$76mTtnt8iUp63R4NhByJIuudgvaFm8NgtXJc5Wn2kRrSFbu5VVmC6',NULL,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(52,'Raisa Rahimah','siswa_9_4','siswa_9_4@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$HrYPNaKJ00C5wotIFdZffeshHpUt9RQVGJQMwxGe54lrLVH754uvG',NULL,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(53,'Pranata Gamblang Marpaung','siswa_10_0','siswa_10_0@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$LOOLxln2HAwW/Bf8wK4EQum1ErnIsgqQBdLLoWkFdXFctQMF0k9pa',NULL,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(54,'Salwa Cindy Safitri S.T.','siswa_10_1','siswa_10_1@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$HWgeEExxUycoJzN.cLVWYOjgjLTDZoytdY6suY5e5ZW7D7YJaM7qi',NULL,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(55,'Oliva Hasanah','siswa_10_2','siswa_10_2@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$9w0YQNKKmxDmB1J8QWPQQubmtio/AI1TDg1.mT5nck163ZjLwyP9i',NULL,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(56,'Dodo Pangestu Anggriawan','siswa_10_3','siswa_10_3@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$JGAMRJFrbHdmGsgLPtDzyuO3eYdD07svScFPbNzDxTs8Phl7OErQO',NULL,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(57,'Jinawi Hutapea S.Sos','siswa_10_4','siswa_10_4@siswa.com','Siswa','Aktif',NULL,NULL,'$2y$10$2GEeWnOtREfzxGXYClZyZe///FSSJxH3c6PrQXK3yhRIso2TO5vhO',NULL,'2026-07-24 09:19:37','2026-07-24 09:19:37'),(58,'Dummy Guru','dummy_guru','guru_dummy@sch.id','Guru','Aktif',NULL,NULL,'$2y$10$c695HJYzGWyGkVh/I1GJfuiq3s2dPydDRLFUjYlQGxFTmvJZH/tb2',NULL,'2026-07-24 10:53:45','2026-07-24 10:53:45'),(59,'Dummy Guru','dummy_guru1784890453','guru_dummy1784890453@sch.id','Guru','Aktif',NULL,NULL,'$2y$10$fbzQvomWb0sbFdFIBnpfXep2/3DrzJtcvSUCs06gjsbz193eiuzrm',NULL,'2026-07-24 10:54:13','2026-07-24 11:09:00'),(60,'Dummy Guru','dummy_guru1784890581','guru_dummy1784890581@sch.id','Guru','Aktif',NULL,NULL,'$2y$10$VSSYqe9JjuItVHKq4kfinOFqFIzBAGucmcmdTKkCXiUSWL17p07MW',NULL,'2026-07-24 10:56:22','2026-07-24 11:09:00'),(61,'Dummy Staf','dummy_staf1784890582','staf_dummy1784890582@sch.id','Staf','Aktif',NULL,NULL,'$2y$10$Jnarn3cch8uahD1vJk3hHueetifvkWzErNCfddpsCc3IRLr/M6J2m',NULL,'2026-07-24 10:56:22','2026-07-24 11:09:01'),(62,'Dummy Siswa','dummy_siswa1784890582','siswa_dummy1784890582@sch.id','Siswa','Aktif',NULL,NULL,'$2y$10$k8pu4G2rGfYLlipSfo8Y5uQ/Cs02yLYZep95z2NtTLamxE3oLKoM6',NULL,'2026-07-24 10:56:22','2026-07-24 10:56:22'),(63,'Dummy Guru','dummy_guru1784890611','guru_dummy1784890611@sch.id','Guru','Aktif',NULL,NULL,'$2y$10$7p7Qo9kBnkYW3UQr3IDUZ./YXdkbVsKkf6TQeI5OSsE6hgmhdXCE.',NULL,'2026-07-24 10:56:51','2026-07-24 11:09:01'),(64,'Dummy Staf','dummy_staf1784890611','staf_dummy1784890611@sch.id','Staf','Aktif',NULL,NULL,'$2y$10$d3Rj/yFaaKCr663dlt.jAeXHd2PiwAKZI.ZdveAhBKxDt/HiPeTVC',NULL,'2026-07-24 10:56:51','2026-07-24 11:09:01'),(65,'Dummy Siswa','dummy_siswa1784890611','siswa_dummy1784890611@sch.id','Siswa','Aktif',NULL,NULL,'$2y$10$UVXehZPK6uj8Odqr9WCGEu5oQfUW5rY1CpcxzaTPSO.oUtineASg6',NULL,'2026-07-24 10:56:51','2026-07-24 10:56:51'),(66,'Siswa Test','12345678','siswa_test@sch.id','Siswa','Aktif',NULL,NULL,'$2y$10$yb3n/StqFFb0LfFmFpD9ie2iGotV6RkWBXN1DbWURYMWYwlWW9zXm',NULL,'2026-07-24 11:43:28','2026-07-24 16:53:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_details`
--

DROP TABLE IF EXISTS `users_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest') NOT NULL,
  `mengajar` varchar(255) DEFAULT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `linkidln` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_details`
--

LOCK TABLES `users_details` WRITE;
/*!40000 ALTER TABLE `users_details` DISABLE KEYS */;
INSERT INTO `users_details` VALUES (1,59,'Guru','Matematika',198001012005011001,'guru_dummy1784890453@sch.id',NULL,NULL,NULL,NULL,NULL,NULL,'0','2026-07-24 10:54:13','2026-07-24 10:54:13'),(2,60,'Guru','Matematika',198001012005011001,'guru_dummy1784890581@sch.id',NULL,NULL,NULL,NULL,NULL,NULL,'0','2026-07-24 10:56:22','2026-07-24 10:56:22'),(3,61,'Staf',NULL,199001012015011002,'staf_dummy1784890582@sch.id',NULL,NULL,NULL,NULL,NULL,NULL,'0','2026-07-24 10:56:22','2026-07-24 10:56:22'),(4,63,'Guru','Matematika',198001012005011001,'guru_dummy1784890611@sch.id',NULL,NULL,NULL,NULL,NULL,NULL,'0','2026-07-24 10:56:51','2026-07-24 10:56:51'),(5,64,'Staf',NULL,199001012015011002,'staf_dummy1784890611@sch.id',NULL,NULL,NULL,NULL,NULL,NULL,'0','2026-07-24 10:56:51','2026-07-24 10:56:51'),(6,65,'Murid',NULL,20230001,'siswa_dummy1784890611@sch.id',NULL,NULL,NULL,NULL,NULL,NULL,'0','2026-07-24 10:56:51','2026-07-24 10:56:51'),(9,1,'Admin',NULL,198001012005011001,'kepsek@sch.id',NULL,NULL,NULL,NULL,NULL,NULL,'0','2026-07-24 16:50:06','2026-07-24 16:50:06');
/*!40000 ALTER TABLE `users_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visimisis`
--

DROP TABLE IF EXISTS `visimisis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visimisis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visimisis`
--

LOCK TABLES `visimisis` WRITE;
/*!40000 ALTER TABLE `visimisis` DISABLE KEYS */;
INSERT INTO `visimisis` VALUES (1,'Mencetak generasi yang cerdas, beriman, dan berakhlak mulia serta berwawasan global.','Menyelenggarakan proses pembelajaran yang aktif, inovatif, kreatif, efektif, dan menyenangkan. Membina karakter siswa melalui kegiatan ekstrakurikuler.Meningkatkan profesionalisme tenaga pendidik.','visimisi.jpg','2026-07-24 17:17:21','2026-07-24 17:24:09');
/*!40000 ALTER TABLE `visimisis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-25  2:06:37
