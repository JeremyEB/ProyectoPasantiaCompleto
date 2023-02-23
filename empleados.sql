-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-02-2023 a las 16:37:25
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empleados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add employee', 7, 'add_employee'),
(26, 'Can change employee', 7, 'change_employee'),
(27, 'Can delete employee', 7, 'delete_employee'),
(28, 'Can view employee', 7, 'view_employee');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$e1lVSY2Lt8C9ntG2gRPZck$+S1gttg8p4kqHzgRG57MOeimlZKfvAvXRgExZUgr1lE=', '2023-01-23 14:19:54.445439', 1, 'jeremyeb', '', '', 'jeremyeb002@gmail.com', 1, 1, '2023-01-23 14:18:27.725901');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-01-23 14:30:15.046188', '1', 'Employee object (1)', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'EmpleadosAPI', 'employee'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'EmpleadosAPI', '0001_initial', '2023-02-01 17:28:05.927318'),
(2, 'contenttypes', '0001_initial', '2023-02-01 17:28:06.068358'),
(3, 'auth', '0001_initial', '2023-02-01 17:28:07.378306'),
(4, 'admin', '0001_initial', '2023-02-01 17:28:07.797482'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-02-01 17:28:07.828622'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-01 17:28:07.844252'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-02-01 17:28:08.051935'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-02-01 17:28:08.192929'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-02-01 17:28:08.229186'),
(10, 'auth', '0004_alter_user_username_opts', '2023-02-01 17:28:08.240200'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-02-01 17:28:08.349972'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-02-01 17:28:08.365592'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-02-01 17:28:08.412451'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-02-01 17:28:08.444107'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-02-01 17:28:08.584299'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-02-01 17:28:08.631571'),
(17, 'auth', '0011_update_proxy_permissions', '2023-02-01 17:28:08.647198'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-02-01 17:28:08.709679'),
(19, 'sessions', '0001_initial', '2023-02-01 17:28:08.772585');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('n14v3w0hlviyke3xilhhl8h67veqwcua', '.eJxVjEEOgjAQRe_StWkY2ynUpXvOQGaYqUUNTSisjHdXEha6_e-9_zIDbWsetqrLMIm5GDCn341pfOi8A7nTfCt2LPO6TGx3xR602r6IPq-H-3eQqeZvHUBJOg8ueIxdcw7gpQ2OETlFioCEybFK9LHx7DAFhSitsiCERGzeH8J7N7A:1pJxfu:AjCGaM6vJnTdeCKetWOKiwL2ZCEk0yByz0Ws9Q3lC5I', '2023-02-06 14:19:54.480023');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleadosapi_employee`
--

CREATE TABLE `empleadosapi_employee` (
  `ID_EMPLEADO` int(11) NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `APELLIDOS` varchar(60) NOT NULL,
  `UBICACION` varchar(60) NOT NULL,
  `PUESTO` varchar(30) NOT NULL,
  `NUMERO_TELEFONO` varchar(20) NOT NULL,
  `EXTENSION` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleadosapi_employee`
--

INSERT INTO `empleadosapi_employee` (`ID_EMPLEADO`, `NOMBRE`, `APELLIDOS`, `UBICACION`, `PUESTO`, `NUMERO_TELEFONO`, `EXTENSION`) VALUES
(11, 'Carlos', 'Mendoza', 'PL08-Plaza Lama 27 de Febrero', 'Lider de Proyecto', '809-341-6445', '21-82'),
(17, 'Bryan', 'Carrera Mañon', 'PL08-Plaza Lama 27 de Febrero', 'Project Manager(WEB)', '809-835-2890', '21-27'),
(18, 'Bernardo', 'Valdez', 'PL08-Plaza Lama 27 de Febrero', 'Project Manager', '829-846-6157', '20-11'),
(19, 'Geyson', 'Rodriguez', 'PL08-Plaza Lama 27 de Febrero', 'Soporte Tecnico', '849-879-6545', '20-25'),
(20, 'Jeremy', 'Encarnacion Basilio', 'PL08-Plaza Lama 27 de Febrero', 'Programador', '829-722-3118', '00-00'),
(21, 'Junior', 'De Los Santos', 'PL08-Plaza Lama 27 de Febrero', 'Soporte Tecnico', '809-672-4906', '15-04'),
(22, 'Junior', 'Garcia', 'PL08-Plaza Lama 27 de Febrero', 'Soporte Tecnico', '809-941-5555', '20-74'),
(23, 'Julio', 'Alcantara', 'PL08-Plaza Lama 27 de Febrero', 'Redes', '829-419-6548', '20-06'),
(24, 'Julio', 'Cesar Mesa', 'PL08-Plaza Lama 27 de Febrero', 'Redes', '829-410-8343', '20-52'),
(25, 'Irvin', 'Perez', 'PL08-Plaza Lama 27 de Febrero', 'Redes', '809-990-2123', '21-31'),
(26, 'Einyel', 'Reyes Baez', 'PL08-Plaza Lama 27 de Febrero', 'Programador', '000-000-0000', '0000'),
(27, 'Fanny', 'Minyety', 'PL08-Plaza Lama 27 de Febrero', 'Recursos Humanos', '809-000-0000', '21-63'),
(28, 'Marino', 'Acosta', 'PL08-Plaza Lama 27 de Febrero', 'Redes', '809-292-4925', '20-91'),
(30, 'Pedro', 'Garcias', 'PL17-Plaza Lama San Isidro', 'Desarrollador', '809-985-9999', '9999'),
(31, 'Jean Carlos', 'Manzanillo', 'PL08-Plaza Lama 27 de Febrero', 'Soporte Tecnico', '829-945-7630', '21-37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendas`
--

CREATE TABLE `tiendas` (
  `id` int(11) NOT NULL,
  `pl` varchar(10) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `estatus` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tiendas`
--

INSERT INTO `tiendas` (`id`, `pl`, `nombre`, `estatus`) VALUES
(1, 'PL01', 'Plaza Lama Duarte', 1),
(2, 'PL03', 'Plaza Lama Herrera', 1),
(3, 'PL04', 'Electrolama Santiago', 1),
(4, 'PL06', 'Venta al Por Mayor', 0),
(5, 'PL08', 'Plaza Lama 27 Febrero', 1),
(6, 'PL10', 'Plaza Lama Oriental', 1),
(7, 'PL11', 'Plaza Lama Máximo G.', 1),
(8, 'PL12', 'Electrolama Independencia', 1),
(11, 'PL15', 'Plaza Lama La Romana', 1),
(12, 'PL16', 'Plaza Lama Santiago', 1),
(13, 'PL17', 'Plaza Lama San Isidro', 1),
(14, 'PL18', 'Super Lama La Vega', 1),
(15, 'PL19', 'Super Lama Sambil', 0),
(16, 'PL20', 'Plaza Lama Bavaro', 1),
(17, 'CD01', 'Centro de Distribución 1', 0),
(18, 'CD02', 'Centro de Distribución 2', 0),
(19, 'OF01', 'Oficinas Administrativas', 0),
(20, 'PL02', 'FERIAS', 0),
(21, 'PL09', 'Tienda Virtual', 0),
(22, 'CD03', 'Centro de Distribución 3', 0),
(23, 'CD04', 'Centro de Distribución 4', 0),
(24, 'PL05', 'Liquidación', 0),
(25, 'PL13', 'Electrolama Higuey', 1),
(26, 'PL14', 'Electrolama San F.', 1),
(27, 'PL18', 'Electrolama La Vega', 0),
(28, 'PL22', 'Electrolama Sambil', 1),
(29, 'PL00', 'Todas', 0),
(30, 'PL80', 'Centro de Servicios', 0),
(31, 'PL99', 'Almacen 27', 0),
(32, 'PL25', 'Electrolama Bonao', 1),
(33, 'PL26', 'Electrolama San Juan', 1),
(34, 'PL25', 'Electrolama Bonao', 1),
(35, 'PL23', 'Plaza Lama KM 12', 1),
(36, 'PL24', 'Electrolama Puerto Plata', 1),
(37, 'PL27', 'Electrolama Bávaro', 1),
(38, 'PL28', 'Electrolama Azua', 0),
(39, 'CP01', 'Centro Producción', 0),
(40, 'CP02', 'Centro Producción 27 Febrero', 0),
(41, 'PL30', 'Electrolama Los Alcarrizos', 1),
(42, 'PL90', 'Centro de Servicios Norte', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `empleadosapi_employee`
--
ALTER TABLE `empleadosapi_employee`
  ADD PRIMARY KEY (`ID_EMPLEADO`);

--
-- Indices de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `empleadosapi_employee`
--
ALTER TABLE `empleadosapi_employee`
  MODIFY `ID_EMPLEADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
