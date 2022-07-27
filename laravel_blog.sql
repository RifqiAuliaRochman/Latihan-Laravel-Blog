-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 27, 2022 at 02:53 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(2, 'Personal', 'personal', '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(3, 'Web Design', 'web-design', '2022-07-16 04:13:29', '2022-07-16 04:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_12_131230_create_posts_table', 1),
(6, '2022_07_13_081955_create_categories_table', 1),
(7, '2022_07_25_180629_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `category_id`, `user_id`, `slug`, `image`, `excerpt`, `body`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 'Optio voluptate harum et qui minus totam.', 2, 1, 'voluptatem-odit-optio-dolore-culpa', NULL, 'Tenetur cum eveniet rerum nam adipisci quod quam. Ab totam minima itaque blanditiis aspernatur molestiae. Libero maiores quae ipsam molestiae eius blanditiis cupiditate.', '<p>Sed dolorum delectus architecto possimus doloremque. Aliquam molestiae molestiae inventore velit necessitatibus. Et molestiae consequatur voluptatibus aut magni molestias quia.</p><p>Praesentium excepturi et sit. Esse quia dolor reiciendis.</p><p>Aut ut sed iusto magnam et pariatur velit. Placeat mollitia eum corporis nihil dolorum ducimus labore. Vitae et iure necessitatibus et facilis perferendis. Qui a quisquam assumenda.</p><p>Incidunt natus quia modi ad ut totam consectetur. Voluptatem reprehenderit molestiae quia sint et nobis ex. Iure sunt id dolores quas fugiat vel rerum. Provident qui perspiciatis qui ea error aut totam vero. Itaque accusamus numquam qui corrupti tempore qui.</p><p>Est sed fugiat vel ducimus. Quod quam sit a aut.</p><p>Eos id nulla qui non. Quas voluptate unde nesciunt rerum ad soluta explicabo. Eos qui omnis ratione numquam quo qui minima recusandae. Cupiditate velit expedita accusantium suscipit.</p><p>Non tempore ut reiciendis est perspiciatis possimus rerum aspernatur. Magnam in debitis iste et beatae voluptatem tenetur voluptas. Perferendis hic quis animi officia est velit. Sit et porro sequi corrupti. Rem distinctio et hic odit.</p><p>Tenetur est cum provident. Minima soluta eligendi quo velit veniam. Pariatur eveniet repellat pariatur assumenda molestiae alias. Et sint doloremque sed veritatis esse.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(2, 'Aut odio.', 1, 1, 'id-nobis-ducimus-ex-mollitia-ipsum-non-veritatis', 'post-images/BT5ELEqV1WOSe0pfVIM4yaSvhDIZBnUqNdpZ8XcU.jpg', 'Consequuntur inventore ut et quibusdam voluptate laudantium. Non in cumque laborum id quisquam corrupti ea. Laboriosam est nobis fuga impedit velit ipsum. Ut eum dolorum qui vel velit.Non ex corrupti...', '<div>Consequuntur inventore ut et quibusdam voluptate laudantium. Non in cumque laborum id quisquam corrupti ea. Laboriosam est nobis fuga impedit velit ipsum. Ut eum dolorum qui vel velit.<br><br></div><div>Non ex corrupti nisi. Voluptates consequuntur natus illo eaque. Et cupiditate omnis aliquid perferendis inventore.<br><br></div><div>Qui velit aut dicta eligendi cumque rerum. Voluptatem qui aut delectus ipsa delectus rem consequuntur dicta. Amet cum laboriosam repudiandae ut. Aspernatur quasi omnis sed aut rem rerum omnis.<br><br></div><div>Dignissimos maiores quas recusandae voluptas nulla autem necessitatibus. Repudiandae voluptatem deserunt laboriosam ut non et accusamus ea.<br><br></div><div>Aut et fuga quibusdam debitis sint. Amet quisquam id atque sequi qui. Tenetur accusantium perspiciatis et itaque veritatis sint.<br><br></div><div>Placeat modi consequuntur fuga est aut ullam in. Ducimus non aut neque suscipit molestiae. Accusantium quia sequi accusamus tempora architecto voluptatibus ea et.<br><br></div><div>Numquam aliquam dolor in rerum quis. Doloremque distinctio consequuntur at repellendus blanditiis vel omnis.<br><br></div><div>Ea a autem ut velit blanditiis. Delectus ut doloribus inventore quis nobis quibusdam. Omnis est dolores sed repellendus id nihil quia.<br><br></div>', NULL, '2022-07-16 04:13:29', '2022-07-25 22:59:10'),
(3, 'Voluptas soluta impedit.', 2, 2, 'sit-est-cumque-accusantium-ipsum-dolores-qui-ipsum-voluptas', NULL, 'Dolor rerum eum debitis facere quo enim magnam. Minima sequi quo repellendus voluptas officiis. Quibusdam natus recusandae modi totam et. Quos quas blanditiis molestiae cum accusamus error culpa non. Quo consequatur atque laboriosam eveniet rerum beatae et dolorum.', '<p>Aut qui quia molestiae voluptatem possimus vel. Nihil et qui doloremque neque atque. Ullam at aut aperiam. Fugiat voluptas iusto sapiente occaecati explicabo et doloribus nobis.</p><p>Aut quae non quia tenetur et. In ut in modi expedita est eius est. Consequuntur et ut eius et quos nihil. Voluptatem numquam minus in voluptas.</p><p>Quia sint impedit eos aliquam. Dolore modi consectetur velit corrupti rem ut. Pariatur nulla eum aliquam harum temporibus. Cumque quos dolorum sit eaque exercitationem accusantium.</p><p>Aut sint facilis facere velit. Itaque officia consectetur cumque atque quisquam id molestiae. Aliquid in officia aliquid.</p><p>Nesciunt atque quis quia voluptatem nihil facere. Hic eius sed hic adipisci quod. Commodi non esse ratione. Eligendi molestiae et culpa ea ut. Qui nobis eum impedit quasi laboriosam enim sint.</p><p>Accusantium dolore omnis tenetur doloribus repellendus voluptatem sequi est. Eos ut quisquam maiores aut omnis ut ea. Error ut sit impedit. Delectus illum doloremque id porro corrupti rem.</p><p>Ex ipsa at et nobis sint. Blanditiis consequatur doloremque eos voluptatem magnam et nulla. Accusantium consequatur facere perferendis incidunt quisquam minus eum. Eos vero qui odit officia.</p><p>Nulla autem deleniti unde necessitatibus. Blanditiis aspernatur nulla ea beatae architecto. Necessitatibus id dicta et et neque eum quidem.</p><p>Omnis numquam exercitationem assumenda sapiente dolor distinctio tenetur. Voluptatem voluptate distinctio enim dolores. Natus et velit a sint minima. Facere expedita est dolorem itaque quas exercitationem aliquid.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(4, 'Sit molestiae consequatur unde enim consequatur.', 1, 1, 'impedit-veritatis-reprehenderit-nam-at-voluptatem-autem', 'post-images/AzPUagBONZHeBnLqi2IcUyezJQIZf1jEcTIWSxwS.jpg', 'Accusamus est nesciunt voluptatem. Esse aperiam voluptas reprehenderit explicabo rerum ut deleniti. Aut voluptate eaque delectus eaque itaque excepturi. Non sequi explicabo quod libero facere expedita...', '<div>Accusamus est nesciunt voluptatem. Esse aperiam voluptas reprehenderit explicabo rerum ut deleniti. Aut voluptate eaque delectus eaque itaque excepturi. Non sequi explicabo quod libero facere expedita.<br><br></div><div>Suscipit dolorem sunt veniam quaerat. Nostrum placeat sed sunt qui vero aliquam. Tempore occaecati reprehenderit facere dolorum fugit ipsam praesentium consequatur. Sapiente earum deserunt et ut.<br><br></div><div>Quam iste est quia sint dolorem assumenda fugiat. Id labore nulla nesciunt voluptatibus asperiores. Sed corrupti et fugiat beatae libero itaque sint. Suscipit voluptatem officia maiores odio dicta.<br><br></div><div>Qui quaerat modi enim autem quam nisi atque et. Vitae rerum consequuntur ipsum perspiciatis sit. Distinctio in rerum ea atque quia. Omnis molestiae libero unde suscipit aliquid nam doloribus dolore.<br><br></div><div>Eveniet corporis quis est voluptatem temporibus neque. Deleniti porro sequi quam asperiores iure. Voluptatibus qui commodi molestias quod deleniti aut et et. Aut dolor dolorem quaerat eveniet aliquid commodi aperiam est.<br><br></div><div>Possimus dolor est reiciendis quisquam sit. Minima sit maxime amet consequatur unde quae totam est. Omnis nulla et laborum cumque. Ipsam architecto doloribus aut.<br><br></div><div>Quis quibusdam et sunt quia facere. Architecto culpa quaerat molestiae sequi cum rerum. Voluptatem voluptatem ipsum iusto dolor porro quia officia. Blanditiis minima odit voluptas vero quos nihil voluptatem.<br><br></div><div>Eaque laboriosam ex veritatis incidunt. Officiis at et odio sit eum. Quam atque optio sed nisi quis. Debitis excepturi nulla veniam ut. Perferendis dolores aspernatur occaecati.<br><br></div><div>Aut dolor necessitatibus mollitia aut facere cupiditate et officia. Aliquam reiciendis quidem voluptatem nesciunt accusamus. Cupiditate in et et nostrum. Aut dolores ut sapiente consequatur architecto autem voluptatum.<br><br></div><div>Commodi magnam quod cupiditate est nihil pariatur. Quos alias dolore esse aut ut eos tenetur placeat. Aspernatur laboriosam voluptas eius dignissimos natus ullam.<br><br></div>', NULL, '2022-07-16 04:13:29', '2022-07-25 23:06:59'),
(5, 'Reiciendis deleniti error.', 2, 2, 'non-optio-eius-et-corrupti-consequatur-quia-animi-odit', NULL, 'Minus reprehenderit iure qui nulla dolor. Facere similique aut ducimus perferendis. Deleniti expedita repellat sit neque.', '<p>Repellendus officiis et deleniti sunt velit. Distinctio nesciunt ducimus sunt non porro officia veritatis. Est quisquam possimus ex qui ratione dolorum.</p><p>Atque et odio incidunt magni eveniet excepturi. Quaerat nesciunt ea et veniam et explicabo. Autem delectus asperiores qui velit. Minus qui mollitia est voluptatibus. Occaecati non earum aut non.</p><p>Repellat minima accusantium eveniet voluptatem velit sed error. Non sapiente voluptates et deleniti. Qui libero sint sit consequuntur rem. Quidem ea dolorum natus dignissimos doloremque repellat quo.</p><p>Est amet sint pariatur minus. Autem commodi quasi ut porro minus minus velit quasi. Doloremque earum at iusto veniam. Velit nihil quasi et eveniet quia.</p><p>Distinctio odio id voluptate distinctio autem temporibus. Qui qui et repellendus sunt eveniet. Explicabo vero voluptatem aut voluptas. At at quos et eum doloribus nesciunt fuga.</p><p>Qui laboriosam veritatis repellendus quo sunt et. Et ad explicabo neque. Molestias ut dicta totam accusantium. Dolores totam dolores est nesciunt.</p><p>Enim et omnis aut est ducimus. Eum dolore et et laboriosam rerum beatae sit alias. Ut doloribus voluptas rerum ipsa minus non aut.</p><p>Quod accusantium veniam quasi pariatur aut ratione voluptatem. Recusandae voluptas dolore eligendi voluptas aut doloremque facere. Sit alias commodi quia reiciendis quas.</p><p>Voluptatibus sapiente maiores accusamus quia ut corrupti. Dolorem architecto iure dolore quod. Natus iusto ut repudiandae accusantium omnis fugiat.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(6, 'Ut est molestias.', 1, 2, 'deserunt-illum-omnis-voluptas-enim-reiciendis-voluptates', NULL, 'Autem molestias magni non placeat corporis. Quibusdam voluptatem pariatur amet id fugiat ea.', '<p>Et debitis quae consequatur ut quis nulla et. Qui rem sint enim. Voluptatibus labore et quia quos aliquam adipisci illum delectus. Architecto enim dolores qui ipsum tempore aliquam sit vitae. Distinctio modi et quidem deserunt.</p><p>Ratione quia illum officia odit consectetur odit. Sit repudiandae reiciendis quia sint. Corporis non aut earum occaecati id commodi mollitia. Rerum aliquid omnis id. Et unde accusamus vitae qui.</p><p>Libero repudiandae dicta magni. Magnam quod nisi incidunt neque. Dolor sequi optio non eos nihil adipisci omnis aut. Voluptatem impedit eaque adipisci et aliquam laudantium maiores.</p><p>Qui perferendis maiores harum earum at eius expedita ad. Quam totam adipisci eius voluptatibus porro. Et ipsa non at.</p><p>Ut fugiat excepturi deleniti et rerum. Voluptas voluptatem eos quo inventore at veniam. Nam accusantium temporibus eum saepe dolore nihil sapiente. Illo ut vel ea ullam accusantium cupiditate ut sit.</p><p>Molestiae minima voluptatem rerum porro molestias ut ut. Omnis fugiat aut tempore deleniti adipisci et. Molestiae et nemo aut autem nesciunt neque unde. Quibusdam et mollitia doloribus est.</p><p>Esse non omnis exercitationem sit rerum omnis voluptatem debitis. Quas suscipit velit et quae illo eos. Et sit et distinctio consequatur tempore fuga deleniti.</p><p>Vero aperiam magnam dolorem sint est ut ea. Molestias occaecati vel quae nam ut. Eum laudantium adipisci aut perferendis. Placeat tempora et excepturi aut.</p><p>Sunt quisquam nesciunt dolor debitis odio rerum enim. Accusantium asperiores autem ea quam molestiae. Et porro aspernatur aspernatur quaerat.</p><p>Molestiae corrupti earum voluptatibus reprehenderit tenetur nisi. Sed labore qui veritatis itaque aut. Repellendus deserunt dolorum consequatur repellendus in a adipisci et. Nihil dolorem doloribus iste tenetur.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(7, 'Dicta culpa et nulla nobis voluptatem quae.', 1, 1, 'explicabo-sint-omnis-molestiae-aliquam-corporis-harum-sit', NULL, 'Esse autem animi vel. Occaecati nesciunt distinctio distinctio pariatur ab ut veniam perferendis. Molestiae facilis consequatur sit id impedit nobis.', '<p>Quibusdam tenetur dolores velit temporibus natus saepe consequuntur. Labore placeat et commodi dolores non quia impedit. Deserunt sed autem cum non ut magni sed.</p><p>Enim magnam alias saepe iste. Officiis optio esse suscipit dicta eveniet. Ab qui enim dolorem voluptatem nobis soluta.</p><p>Molestiae rerum magnam eius et. Eveniet temporibus quis voluptatibus maiores amet doloremque qui. Odit consequatur ducimus consequatur minus voluptatem cum.</p><p>Saepe sit occaecati recusandae voluptas tenetur deserunt rerum. Totam eos et maiores dolore natus similique. Suscipit similique maxime facere enim. Est dolor aut veritatis hic. Totam voluptatibus in qui quo occaecati consequuntur dolores.</p><p>Omnis excepturi eligendi aliquid laboriosam. Est aut ipsa velit alias quaerat qui aut. Architecto non quas natus et.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(8, 'Distinctio qui in error velit recusandae exercitationem.', 1, 1, 'ullam-esse-et-perferendis-id-sit-similique', NULL, 'Nemo et quasi enim expedita qui et dolores. Ducimus cupiditate non nisi.', '<p>Perspiciatis eligendi ex fugiat repudiandae qui ratione. Sequi in eos temporibus rerum. Asperiores consequuntur cupiditate dolores consequuntur labore.</p><p>Unde veritatis porro est tempore harum ut vitae laudantium. Accusantium nulla expedita quo quaerat qui ut repellendus. Cumque fugiat dolor voluptatem incidunt excepturi facilis. Ratione quia magni beatae quo.</p><p>Quia ut non eaque aliquam similique rerum quis distinctio. Quod tempore quia velit accusamus molestiae. Maiores itaque voluptas sit consectetur possimus. Impedit totam dolor ducimus dolor hic quisquam. Quis explicabo est aperiam recusandae atque.</p><p>Nam ut consequatur occaecati minima consequuntur ut aspernatur. Itaque saepe eos enim soluta autem. Qui assumenda et ab neque id ipsa. Architecto officiis animi eum ipsa laboriosam quo aut. Suscipit recusandae qui tempora possimus enim nesciunt saepe omnis.</p><p>Autem asperiores similique laborum et occaecati molestiae est. Est ducimus voluptates saepe aut omnis sed ut. Excepturi consequatur quam consequatur laudantium rerum quia.</p><p>Sit distinctio consequatur vero nihil. Et accusamus rerum molestias nihil aliquid aperiam aut. Voluptatum ad voluptatibus qui totam quia ut tenetur.</p><p>Et et est sit est rem mollitia soluta tenetur. Qui id et ad vel veritatis expedita. Sunt pariatur reiciendis magnam laboriosam.</p><p>Saepe quaerat ut blanditiis quia dolorum ut. Nostrum veniam nostrum quidem laboriosam sint autem. Sed consequuntur ea quos tempora. Veritatis id eligendi fuga ad vel et. Molestias ut et omnis et ipsum.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(9, 'Voluptas dolorem ut at ut quibusdam.', 2, 3, 'voluptas-omnis-in-dolor-optio-eum-est-alias', NULL, 'Dolor eum rerum labore esse dolore iste. Non qui ea labore repellat nihil blanditiis. Nisi dolorum est nihil aperiam excepturi voluptas.', '<p>Rem voluptatem sint ea minima. Possimus velit nihil alias doloribus laboriosam ab dolorem. Totam illo nihil reprehenderit. Ut placeat ut ea qui qui pariatur eaque.</p><p>Consequatur veritatis maxime aliquid eaque quaerat expedita. Minus modi et rem et harum necessitatibus architecto. Sit sint ex velit atque quaerat non praesentium.</p><p>Magni itaque recusandae at dolorem cupiditate voluptas. Iure voluptatem illum dolores ex non aut dolor voluptatem. Nostrum sunt deleniti modi ut rerum a alias. Et fugit in eum alias magni quo quia.</p><p>Animi nobis nihil cupiditate et sed eligendi. Voluptatem autem atque nemo saepe dolorum quos. Magnam harum unde dolor ipsum dignissimos. Minima nulla voluptatem qui praesentium.</p><p>Ea alias asperiores necessitatibus. Voluptatem qui ducimus fuga non. Cum saepe dolores quo et cum placeat unde sit. Quasi et pariatur et eos culpa dolores qui.</p><p>Et ipsum autem laboriosam id maxime cupiditate omnis. Rem dolore tempora est. Dolores autem asperiores tempore eaque quod voluptatibus ut.</p><p>Id id qui qui rem et soluta recusandae. Sapiente laborum quidem totam et quo. Dolor dolorum eum sunt corporis doloribus expedita.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(10, 'Aliquid earum quibusdam esse dolore odio sunt ab esse ea vero.', 2, 3, 'a-nobis-sed-consequatur-rem-aliquid-ex', NULL, 'Ut ipsum velit explicabo quo. Eos labore ratione qui minus mollitia deserunt sit.', '<p>Odit quasi corrupti nihil magni quod. Corrupti et recusandae rerum exercitationem asperiores reiciendis sed. Recusandae temporibus consequatur libero vitae. Nemo quae voluptas quo animi adipisci ut ut.</p><p>In sed magnam quasi. Amet dolores distinctio omnis omnis.</p><p>Ratione possimus est eum dicta ab minus hic. Inventore dignissimos cupiditate quidem et. Impedit ratione velit eveniet possimus. Inventore ut quam maxime ut voluptatem et voluptatum. Placeat nihil dolore facilis fugiat labore cumque.</p><p>Consequatur voluptatum accusantium sit animi voluptatem molestiae et. Ullam qui eum cupiditate quaerat quo voluptatem neque. Aut earum eveniet deserunt tenetur explicabo ut voluptatem. Sapiente odio laudantium laborum consequuntur.</p><p>Praesentium culpa et ex voluptatem harum quibusdam. Ea expedita rerum atque reprehenderit quis ullam maiores. Qui quod odit eaque labore ab ratione modi. Veniam vitae quo mollitia corporis quas.</p><p>Error vitae suscipit atque consequatur est. Est dolor quaerat necessitatibus sunt.</p><p>Accusantium omnis ea possimus possimus id perferendis ad. Doloribus soluta omnis omnis rerum. Sit consequatur quos occaecati laboriosam.</p><p>Animi ea exercitationem omnis dolores. Repudiandae non voluptatibus harum quia nulla explicabo sint. Repudiandae sunt qui pariatur dolores sint.</p><p>Aut rem corrupti architecto pariatur sunt eaque. Facilis et praesentium architecto architecto doloribus. Velit et autem sequi cum quia labore nisi. Mollitia et laboriosam quisquam quaerat magni libero illo. Eveniet aut cumque eum explicabo.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(11, 'Aliquam aperiam nesciunt totam assumenda qui suscipit.', 2, 3, 'et-quaerat-nemo-eum-perferendis-eveniet', NULL, 'Harum recusandae fugit ad placeat aut ut. Ipsum voluptas libero eius vel dolores est qui. Qui veritatis cumque accusantium id corrupti ipsa.', '<p>Ut et deleniti dignissimos doloremque voluptatem et earum. Sed placeat mollitia velit et enim debitis est et. Ratione id explicabo cum maiores quia facilis commodi.</p><p>Commodi animi voluptate perspiciatis reiciendis dicta. Architecto sunt ea ea et molestiae nostrum ut. Est et sed harum non officiis. Quo ullam et est qui praesentium distinctio.</p><p>Eos velit velit alias architecto facere incidunt excepturi. Et nihil ab voluptas esse. Quia temporibus fugit nesciunt veniam ea aspernatur consequatur. Ut rerum sit molestiae dolorum incidunt sequi error.</p><p>Sit reprehenderit aliquam est eos ea voluptatem dolore. Expedita dolorem velit quia asperiores perspiciatis id. Inventore veniam veniam minima. Qui voluptatem impedit sequi accusantium ipsam aut atque ut.</p><p>Eos voluptates aut iure. Dignissimos autem cum est. Velit aspernatur inventore voluptas quia amet commodi omnis. Aspernatur consequatur dolore numquam ipsum et.</p><p>Sunt earum optio ea voluptas eius debitis rerum. Voluptas veritatis saepe incidunt minima est nihil qui. Sed distinctio nemo quia excepturi rem fuga. A dicta officiis reprehenderit quae necessitatibus tenetur.</p><p>At quis cumque occaecati modi. Officia nobis aut facere tempore non tempore reiciendis. Vel cum quasi tempore qui. Quae magni itaque beatae et inventore nihil.</p><p>Ad nihil molestiae recusandae eius rerum. Quibusdam repellendus quis ut commodi enim ipsa est. Facere rem repellendus sed consequatur et.</p><p>Placeat aut beatae delectus pariatur aspernatur amet. Consectetur dolorem esse aut consectetur ut dignissimos sint. Earum laudantium ut ut officia est dolores. Deleniti aut iure delectus nostrum non est aut ducimus.</p><p>Placeat qui in nihil exercitationem veritatis accusantium. Ipsam nobis ea beatae et. Recusandae voluptatem voluptas quam ea.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(12, 'Quia placeat fugiat minus itaque.', 2, 2, 'commodi-maxime-odit-sunt-dolorum-vel', NULL, 'Aliquam nesciunt rem eveniet enim ut nesciunt. Neque optio a voluptatibus in voluptate deleniti. Soluta adipisci tempora voluptas molestiae ut sunt perspiciatis.', '<p>Saepe incidunt et minima cumque repellat laborum. Similique aut dolores amet omnis fugiat. Dolores qui nihil aliquam animi omnis eos. Aperiam dolorem ea eveniet voluptate nisi vero. Eos veritatis asperiores delectus quia et.</p><p>Illum unde quis voluptatum rerum dolore maxime ut. Ad dolor ut voluptas quia animi dolorum. Vel officia veniam neque consequuntur inventore.</p><p>Nemo excepturi mollitia consequuntur velit soluta. Perferendis aliquam repellat suscipit quis et velit iusto. Nobis id necessitatibus quo minus.</p><p>Et ut aut explicabo fugiat. Laborum in hic iusto minima.</p><p>Dolores eum ad non fuga. Eligendi temporibus placeat corporis perspiciatis voluptatum nesciunt velit et. Odio ut consequatur sit omnis.</p><p>Aperiam dignissimos est qui illum voluptatibus. Ut non neque cumque sit. Qui tenetur cupiditate fuga eveniet ut.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(13, 'Quo qui ratione quas facilis ipsa quas ullam.', 1, 2, 'voluptatem-dolores-voluptatem-aut-amet-perspiciatis-dolorem', NULL, 'Sed dicta et voluptas odio. Aliquid eveniet quia in dolore modi. Iste repellendus qui optio in sunt minima. Beatae at quae qui aliquid consequatur et.', '<p>Veniam non at necessitatibus est dolor numquam. Accusantium optio eum ea magni qui. Culpa at sit et aut eum nihil iste nesciunt.</p><p>Consequatur facilis impedit nobis nisi ipsam. Voluptatem aut quam minima repellendus perspiciatis dolorem. Perferendis non adipisci et necessitatibus.</p><p>Aliquam explicabo repellendus et. Atque nemo odit nesciunt et nemo. Autem corrupti est quod iusto nostrum dolorem.</p><p>Consequatur aut aliquid quidem quia delectus dolorem. Occaecati at atque dolor quia consequatur provident nihil. Ratione id perferendis consequatur sed occaecati quidem. Consequatur laboriosam optio deserunt occaecati ex quibusdam.</p><p>Deserunt vitae sed ducimus veritatis amet. Aspernatur aut consequatur et adipisci delectus rerum. Quisquam rem quibusdam numquam optio omnis earum.</p><p>Atque natus facilis ea velit voluptate magni. Minus in aut voluptatum consequatur similique delectus. Recusandae hic cupiditate temporibus non rem. Repudiandae dolorem enim et cupiditate similique sint.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(14, 'Et voluptatem quia iste ducimus vel repellendus.', 1, 2, 'consequatur-aut-necessitatibus-illum-iusto', NULL, 'Repudiandae facere maxime quidem et. Eum doloribus quia eius dolores. Et et ratione iusto modi qui dolorum suscipit est. Animi tempora nobis molestias distinctio aperiam suscipit officiis.', '<p>Laboriosam omnis voluptas excepturi corporis. Ab quod culpa aspernatur laudantium necessitatibus.</p><p>Officia dolorem quis id et vero commodi. Id fugit velit neque dolorem dolore velit eum.</p><p>Quia repellendus nihil autem suscipit neque. Quam officia quisquam corrupti velit ducimus. Voluptatem ratione nesciunt id illum et dolorem.</p><p>Atque et odit pariatur consequatur repudiandae repellat. Nobis sit iusto est. Molestias amet quo ea velit cumque.</p><p>Repellat similique animi quibusdam molestiae. Quis aliquam enim tenetur perspiciatis corrupti vero. Unde sequi hic perspiciatis nam quos doloribus laboriosam quaerat. Distinctio ipsam illum consequatur sint ab quo dolor.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(15, 'Consequuntur atque sequi consequatur commodi et voluptatum.', 1, 2, 'nihil-aut-cum-sed-quis-velit-dolor', NULL, 'Velit dolore nisi et laborum veniam. Provident expedita recusandae aut repellat. Velit minus dolor explicabo in. Commodi eum ut reiciendis atque commodi.', '<p>Quasi et ipsam nisi dolor exercitationem tempore. Sint placeat illum doloremque. At nesciunt dolorem libero voluptate totam unde amet ut.</p><p>Sed consequatur autem nulla dolorem dolore occaecati facere. Facere eius libero autem mollitia necessitatibus dolor aperiam. Repellendus quis iusto ut repellat voluptatum non labore autem. Maiores corrupti illo recusandae aut sint minima.</p><p>Aut veritatis consequatur qui alias perspiciatis nemo. A totam et et aspernatur. Amet officiis ipsum ipsam. Molestiae ratione aliquam modi nulla.</p><p>Voluptatibus in nisi minima et quidem consequatur. Eos ipsa necessitatibus eos occaecati earum tenetur aut. Aliquid sunt deserunt suscipit repellendus. Neque dolor eveniet vel sapiente nisi nihil dolore.</p><p>Nemo autem quidem et totam iure debitis incidunt possimus. Accusantium nam sapiente culpa animi nihil dolores aut suscipit. Rerum vel magni commodi nobis excepturi consequuntur sunt. Et et quo aut non odio.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(16, 'Delectus est odio assumenda.', 2, 2, 'illo-placeat-nemo-illo-ut-cupiditate-natus-eius', NULL, 'Voluptatem ab nesciunt rerum et a porro optio quas. Quia distinctio minima eaque mollitia aut. Eaque quasi qui molestiae nobis sint placeat.', '<p>Dicta accusamus hic incidunt hic qui cupiditate sint voluptas. Quos consequatur laudantium ut ea sit veniam voluptas. Nihil voluptatem ut reiciendis natus quis.</p><p>Veritatis enim ut magnam molestias distinctio voluptatem. Excepturi similique tenetur et. Aut quod blanditiis perferendis modi provident reiciendis. Maxime non minus et.</p><p>Dolores qui et eum sit ad aperiam. Non repellat ipsam quos minima odio asperiores itaque ut. Excepturi dolor ad ipsam sed et nam qui veniam. Cum quae laudantium quia deserunt ea.</p><p>Voluptates eaque ut voluptate tempore et vel enim. Hic et quisquam minus hic atque eum.</p><p>Earum quam ut non sint et soluta est. Id molestias voluptate quia recusandae aut quia. Voluptatem consequatur minus rerum. Autem animi neque aut earum et.</p><p>Cumque iure fuga qui enim. Atque nesciunt culpa eligendi impedit alias repudiandae corrupti. Provident velit eius voluptates ut sint.</p><p>Repellendus totam voluptatem fugiat exercitationem minima aut. Ullam rerum beatae fugit ipsam quibusdam aut. Blanditiis voluptas esse vitae eum perspiciatis dolor perspiciatis.</p><p>Blanditiis rerum est sint dicta omnis hic molestiae. Optio quos qui pariatur deleniti pariatur eius aperiam.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(17, 'Ipsa voluptatem consectetur nobis harum totam aliquid voluptatum unde maiores et nisi.', 1, 3, 'nisi-beatae-voluptas-asperiores-minima-et', NULL, 'Deserunt tenetur dolores voluptas. Aut sit dolorum laudantium iste deserunt. Aut possimus porro voluptatem non.', '<p>Ut natus magni quis dolor illum deserunt. Eos optio veniam quidem voluptas. Ut impedit sit blanditiis aperiam ut eos. Ea autem ut quam sit dolores rem.</p><p>Nihil quasi commodi minus rerum itaque est cum. Ad dolorum culpa velit et. Alias et quia impedit impedit mollitia dicta. Hic cumque consectetur quia provident necessitatibus officiis ab. Eum enim rem vitae laboriosam sed aut perspiciatis.</p><p>Ut ad fugit minima aut illo eum culpa. Repudiandae at nesciunt perspiciatis et. Nisi porro pariatur autem voluptatem omnis in.</p><p>Dolores commodi aut esse cupiditate consequuntur debitis et. Animi similique ullam non nemo ipsam nostrum iusto. Sint voluptatem est illum quae consequuntur quisquam cum. Est impedit eligendi voluptatem mollitia. Sapiente corporis ut rem adipisci sunt.</p><p>Maxime repudiandae molestiae nostrum sit molestiae dolorem esse. Qui voluptas impedit voluptates accusantium.</p><p>Eligendi ipsam adipisci quia et. Eos consequuntur aut ducimus quod.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(18, 'Omnis quis autem doloremque quasi.', 1, 1, 'eum-excepturi-tempore-occaecati-tenetur', NULL, 'Blanditiis saepe molestias nam nam. Ut temporibus velit eum vel quibusdam blanditiis et. Cupiditate asperiores libero molestiae porro. Dolores laborum nam voluptatum quas. Laborum possimus nihil tenetur consequuntur.', '<p>Repellat sapiente ea vero laborum sint eaque ex vel. Illo qui dolor voluptatem et veritatis ratione inventore. Et ut nihil nesciunt est ab numquam suscipit.</p><p>Asperiores enim et libero occaecati quam modi quibusdam. Et doloribus aut quisquam facilis reiciendis rem. Laboriosam culpa ut possimus dolor officia laudantium aut.</p><p>Velit consequuntur fugiat voluptatum eum commodi atque maiores. Placeat consectetur non dignissimos cupiditate aliquid nam non. Expedita deleniti voluptas ea.</p><p>Dignissimos ex provident repudiandae velit non. Praesentium eligendi ab in. Quam neque est quo natus autem perspiciatis.</p><p>Quibusdam odit quis corporis et repudiandae cumque aut. Id praesentium laboriosam nulla voluptatem. Nisi harum qui tempore et distinctio. Iure voluptatem porro fugit molestias eveniet et pariatur. Enim laudantium vel et eum esse et quaerat.</p><p>Voluptates et amet repudiandae tempore vel illo. In consequuntur porro quasi aut dolores voluptas voluptatem et. Magni magni sit odio inventore in expedita est.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(19, 'Ea sunt provident.', 2, 1, 'reprehenderit-ullam-doloribus-ut-inventore-fugiat-qui-eos', NULL, 'Alias sint itaque ut facere. Deleniti sequi sunt voluptatem accusamus enim ratione tempora.', '<p>Cum aut id magnam incidunt. Cumque minus voluptas omnis modi. Molestias expedita perferendis nam porro assumenda magni.</p><p>Quidem consectetur magni repudiandae blanditiis debitis et. Aut eum corporis quod quaerat ut facilis sunt.</p><p>Quam qui nisi adipisci et. Et nam natus culpa tempora non architecto accusantium. Ipsam sed quia maxime dolor.</p><p>Consequatur est praesentium autem rerum quaerat consectetur beatae quod. Sed qui neque in sapiente saepe voluptatem quia. Rem commodi velit est soluta ab est.</p><p>Dolor et iure ut quia dolorem voluptates voluptatem doloremque. Ab similique ipsa ut incidunt. Voluptas amet sit voluptates alias itaque laudantium et.</p><p>Eum ducimus voluptatem et qui ut. Et et quia et assumenda debitis sunt. Quo molestiae qui qui nesciunt praesentium consequatur ullam. Quia officiis consequatur quia aut nostrum excepturi ipsum.</p><p>Assumenda natus ut ipsam doloribus possimus. Eius non qui ea consectetur tenetur. Vitae dolore voluptate hic. Consectetur vitae pariatur occaecati pariatur neque vel perspiciatis.</p><p>Voluptatem corrupti omnis aut ipsa autem. Debitis velit quae qui illo asperiores facilis. Ipsam optio est facilis laboriosam.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29'),
(20, 'Quibusdam placeat aut ut itaque.', 1, 1, 'quas-est-ea-aut-aut-praesentium-et-ratione', NULL, 'Similique amet incidunt pariatur. Dolores velit officia voluptatem harum amet eaque sint. Placeat error aut in voluptas in.', '<p>Quia deleniti id repellendus officia unde exercitationem. Nam dicta quaerat aliquam hic rerum quae error. Dignissimos aut quod voluptatum dolores fugit occaecati. Dignissimos dolorem sit reiciendis non amet.</p><p>Porro harum beatae nostrum excepturi omnis eveniet aliquam. Alias repellat reiciendis sequi ut. Eaque perspiciatis ducimus blanditiis est suscipit odio.</p><p>Harum et quos qui suscipit libero ex. Ut omnis quis porro iusto.</p><p>Amet quidem incidunt molestias veritatis alias reprehenderit. Officia possimus dicta laudantium. Corporis eos corrupti ratione autem voluptas.</p><p>Nisi maiores non cupiditate aut. Est suscipit autem iste eligendi distinctio beatae perspiciatis. Maiores modi quia autem quaerat omnis ut necessitatibus. Vitae quaerat debitis exercitationem qui consequatur aspernatur.</p><p>Quam error et voluptate aut cum. Iusto omnis aliquam pariatur laudantium.</p>', NULL, '2022-07-16 04:13:29', '2022-07-16 04:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Rifqi', 'rifqi', 'rifqirochman8@gmail.com', NULL, '$2y$10$Emr5zGZglIlvkOmwnKkHL.Xwk/3r29coWt4Kg8BtbUF1vOcUa5bS2', NULL, '2022-07-16 04:13:28', '2022-07-16 04:13:28', 0),
(2, 'Darmana Gunarto', 'hairyanto01', 'dfarida@example.net', '2022-07-16 04:13:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Awr1T9XERV', '2022-07-16 04:13:29', '2022-07-16 04:13:29', 0),
(3, 'Septi Novitasari S.Pt', 'garang.mandasari', 'gading.hassanah@example.com', '2022-07-16 04:13:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XfcS65S8MH', '2022-07-16 04:13:29', '2022-07-16 04:13:29', 0),
(4, 'Rahmat Gunarto', 'sihombing.vera', 'iswahyudi.hendri@example.net', '2022-07-16 04:13:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aPDw9svscI', '2022-07-16 04:13:29', '2022-07-16 04:13:29', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
