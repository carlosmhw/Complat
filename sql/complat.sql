CREATE TABLE `course` (
  `id_course` int(11) PRIMARY KEY AUTO_INCREMENT,
  `course_name` varchar(80)  DEFAULT NULL,
  `description` varchar(250)  DEFAULT NULL,
  `description_detailed` varchar(500)  NOT NULL,
  `type` varchar(50) NOT NULL,
  `course_path` varchar(100)  NOT NULL,
  `image_path` varchar(200)  DEFAULT NULL,
  `image_main_path` varchar(100) NOT NULL
)



INSERT INTO `course` (`course_name`, `description`, `description_detailed`, `type`, `course_path`, `image_path`, `image_main_path`) VALUES
('Diseño de algoritmos', 'Curso básico de diseño de algoritmos', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'PROGRAMACION', '?view=algorithms', 'courses_assets/algorithms/img/div_img_course.png', 'courses_assets/algorithms/img/main-img-course.png'),
('Programación en C++', 'Curso básico de programación en C++', '', 'PROGRAMACION', '#', 'courses_assets/c++/img/div_img_course.png', ''),
('Prueba', 'Prueba', '', 'PROGRAMACION', '#', 'courses_assets/c++/img/div_img_course.png', ''),
('Prueba 2', 'Curso de prueba', '', 'PROGRAMACION', '#', 'courses_assets/algorithms/img/div_img_course.png', ''),
('Prueba 2', 'Curso de prueba', '', 'PROGRAMACION', '#', 'courses_assets/algorithms/img/div_img_course.png', '');

CREATE TABLE `course_index` (
  `id_course_index` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `id_course` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `subitem` tinyint(4) NOT NULL DEFAULT '1',
  `link_title` varchar(200) DEFAULT NULL,
  `link_video` varchar(250) DEFAULT NULL,
  `topic_number` int(11) DEFAULT NULL
)



INSERT INTO `course_index` (`id_course`, `title`, `subitem`, `link_title`, `topic_number`) VALUES
(1, '1. Introducción al curso', 0, '#', 1),
(1, '1.1. ¿Qué es un algoritmo?', 1, '#', 2),
(1, '1.2. Importancia de los algoritmos', 1, '#', 3);


CREATE TABLE `rel_advance` (
  `id_rel_advance` bigint(255) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `id_course` int(11) NOT NULL,
  `id_user` bigint(255) NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT '0',
  `topic_number` int(11) DEFAULT NULL
) 


INSERT INTO `rel_advance` (`id_course`, `id_user`, `seen`, `topic_number`) VALUES
(1, 1, 0, 1),
(1, 1, 0, 2),
(1, 1, 0, 3);


CREATE TABLE `rel_user_course_score` (
  `id_ucs` bigint(255) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `id_user` bigint(255) NOT NULL,
  `id_course` int(11) NOT NULL
);



INSERT INTO `rel_user_course_score` (`id_user`, `id_course`) VALUES
(1, 1);



CREATE TABLE `user` (
  `id_user` bigint(255) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `user` varchar(25)  NOT NULL,
  `pass` varchar(200)  NOT NULL,
  `email` varchar(255)  NOT NULL,
  `permiso` int(1) NOT NULL DEFAULT '0',
  `activo` int(1) NOT NULL DEFAULT '0',
  `keyreg` varchar(120)  NOT NULL DEFAULT '',
  `keypass` varchar(50)  NOT NULL,
  `new_pass` varchar(50) NOT NULL
)



INSERT INTO `user` (`user`, `pass`, `email`, `permiso`, `activo`, `keyreg`, `keypass`, `new_pass`) VALUES
('CarlosCarmona', '47b4d0c9445131dec646a489805f0f52', 'cm.carmona18@outlook.com', 0, 1, '', '', ''),
('Arael', '7a485f422b71e766b52f7029551af944', 'arael19@hotmail.com', 0, 0, '99485e506d4dd389c61c6220b0075016', '', ''),
('scrollmck', '1e695c40859c9bf8e0e87c6f18465dd7', 'alejandro_bustillos@ingenieros.com', 0, 1, '', '', '');




