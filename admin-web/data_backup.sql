--
-- PostgreSQL database dump
--

\restrict 1xyYGaVHj3urpSZXVwI1TrBj9dQxSqOvJdCwtfudE6cDSLO7eBVnu9XdYwy0DBn

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2025-12-09 15:02:30

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5108 (class 0 OID 16497)
-- Dependencies: 233
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cache (key, value, expiration) VALUES ('laravel-cache-livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1764219356;', 1764219356);
INSERT INTO public.cache (key, value, expiration) VALUES ('laravel-cache-livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1764219356);
INSERT INTO public.cache (key, value, expiration) VALUES ('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1765121220;', 1765121220);
INSERT INTO public.cache (key, value, expiration) VALUES ('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1765121220);


--
-- TOC entry 5109 (class 0 OID 16507)
-- Dependencies: 234
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5095 (class 0 OID 16390)
-- Dependencies: 220
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.categories (id, name) VALUES (1, 'Semua Kategori');
INSERT INTO public.categories (id, name) VALUES (3, 'Makanan');
INSERT INTO public.categories (id, name) VALUES (4, 'Minuman');
INSERT INTO public.categories (id, name) VALUES (5, 'Makanan Ringan');
INSERT INTO public.categories (id, name) VALUES (9, 'Menu Paket');
INSERT INTO public.categories (id, name) VALUES (8, 'Aneka Saus dan Sambal');


--
-- TOC entry 5114 (class 0 OID 16548)
-- Dependencies: 239
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5112 (class 0 OID 16533)
-- Dependencies: 237
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5111 (class 0 OID 16518)
-- Dependencies: 236
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5097 (class 0 OID 16399)
-- Dependencies: 222
-- Data for Name: menus; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (4, 'Air Putih', 'Air doa', 5000, 'menus/01KB29Z5VGYQJJ5A07GP7VP8BM.png', 4, true, '2025-11-27 16:23:04.69206');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (23, 'Mix Geprek + Mozarella', 'Paket sambal geprek dan mozarella', 5500, NULL, 8, true, '2025-12-07 16:12:15.491675');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (24, 'Mix Hot Volcano + Keju', 'Paket saus hot volcano dan saus keju', 5500, NULL, 8, true, '2025-12-07 16:12:54.188179');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (9, 'Sosis (Olesan saus)', 'Sosis dengan olesan saus', 10000, 'menus/01KBWHX45HW2QF7N5X8T28JRCC.jpg', 5, true, '2025-12-07 15:09:56.17336');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (25, 'Nasi Putih', 'Nasi putih', 5000, 'menus/01KBWJ94DG1162J4VBP47BWEYG.jpg', 3, true, '2025-12-07 21:08:34.740531');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (13, 'Nugget', 'Nugget daging ayam', 8000, 'menus/01KBWJGTS7WBJBSX5WJ0XNG70P.png', 5, true, '2025-12-07 15:27:09.661909');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (15, 'Kentang Goreng', 'Olahan kentang', 5000, 'menus/01KBWJMGJGZ1DP8SBDSK3AE4E1.png', 5, true, '2025-12-07 15:45:37.370055');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (17, 'S-tee', 'S-tee botol', 4000, 'menus/01KBWJTEBBPY991GJ5882V5PDT.jpg', 4, true, '2025-12-07 15:46:54.06175');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (1, 'Ayam Crispy -  Dada', 'Ayam goreng tepung bagian dada', 10000, 'menus/01KBWKB35RQK4FWS5KM9FQ5SZM.jpg', 3, true, '2025-11-23 22:57:44.647742');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (6, 'Ayam Crispy - Paha Atas', 'Ayam goreng tepung bagian paha atas', 10000, 'menus/01KBWKGM8M3W2557WCB4GMJSNK.jpg', 3, true, '2025-12-07 15:06:09.381851');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (7, 'Ayam Crispy - Sayap', 'Ayam goreng tepung bagian sayap', 7000, 'menus/01KBWKHVBY32QAS05KEG8QG3BG.jpg', 3, true, '2025-12-07 15:09:05.896526');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (8, 'Ayam Crispy - Paha Bawah', NULL, 8000, 'menus/01KBWKJF2CT2V3QZ3EQ4ZTSF0G.jpg', 3, true, '2025-12-07 15:09:23.217412');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (11, 'Sate', 'Sate potongan daging ayam', 4000, 'menus/01KBWM4AM33GEXKXPR6Y2D3Q90.jpg', 5, true, '2025-12-07 15:10:30.37353');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (10, 'Kulit', 'Kulit crispy', 6000, 'menus/01KBWJD6AWRX4CBTD7XN9DN9GD.jpg', 5, true, '2025-12-07 15:10:05.554271');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (12, 'Cream soup', 'Sup krim hangat ', 5000, 'menus/01KBWNZNBMEDS17B2YR2FKE1GE.jpg', 5, true, '2025-12-07 15:23:18.694074');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (14, 'Chicken Pop', 'Olahan daging ayam crispy', 7000, 'menus/01KBWP1B5FHB31A0550B3SXWB3.jpg', 5, true, '2025-12-07 15:45:07.459861');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (18, 'Sambal Geprek', 'Sambal geprek pedas', 4000, 'menus/01KBWP3XH0CHAPZ69YRYQMQ8BE.jpg', 8, true, '2025-12-07 15:47:25.53843');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (19, 'Sambal Ulek Cabe Ijo', 'Sambal ulek cabe hijau', 4500, 'menus/01KBWP50TYX9ZJ22YHR1D3XJDG.jpg', 8, true, '2025-12-07 15:48:02.758125');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (20, 'Saus Hot Volcano', 'Saus pedas', 4500, 'menus/01KBWP7MKBZFADPJTY315H7NQM.jpg', 8, true, '2025-12-07 15:49:23.765184');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (21, 'Saus Keju', 'Saus keju', 4000, 'menus/01KBWP8RNGW54QHGTPRNA019AR.jpg', 8, true, '2025-12-07 16:11:04.212336');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (22, 'Mozarella', 'Saus keju mozarella (tanpa ayam)', 5000, 'menus/01KBWPBAHCKK1XQVFFF35E1YRB.jpg', 8, true, '2025-12-07 16:11:30.573306');
INSERT INTO public.menus (id, name, description, price, image_url, category_id, is_available, created_at) VALUES (16, 'Burger', 'Burger dengan daging sapi irisan', 12000, 'menus/01KBWPQ23HQGZ1V4PJX1VYBMW4.jpg', 3, true, '2025-12-07 15:46:32.072385');


--
-- TOC entry 5103 (class 0 OID 16452)
-- Dependencies: 228
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.migrations (id, migration, batch) VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO public.migrations (id, migration, batch) VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO public.migrations (id, migration, batch) VALUES (3, '0001_01_01_000002_create_jobs_table', 1);


--
-- TOC entry 5099 (class 0 OID 16418)
-- Dependencies: 224
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.orders (id, customer_name, total_price, status, created_at, updated_at) VALUES (2, 'Rosad', 20000, 'pending', '2025-11-25 22:26:20.850669', '2025-11-25 22:26:20.850669');
INSERT INTO public.orders (id, customer_name, total_price, status, created_at, updated_at) VALUES (3, 'Akmal', 40000, 'pending', '2025-11-25 22:27:36.829333', '2025-11-25 22:27:36.829333');
INSERT INTO public.orders (id, customer_name, total_price, status, created_at, updated_at) VALUES (4, 'keempat', 10000, 'pending', '2025-11-26 01:30:53.268208', '2025-11-26 01:30:53.268208');
INSERT INTO public.orders (id, customer_name, total_price, status, created_at, updated_at) VALUES (5, 'kelima', 10000, 'pending', '2025-11-26 01:32:44.188484', '2025-11-26 01:32:44.188484');
INSERT INTO public.orders (id, customer_name, total_price, status, created_at, updated_at) VALUES (6, 'rapli', 60000, 'pending', '2025-11-27 14:56:00.471663', '2025-11-27 14:56:00.471663');
INSERT INTO public.orders (id, customer_name, total_price, status, created_at, updated_at) VALUES (7, '6', 15000, 'pending', '2025-11-27 17:03:12.322944', '2025-11-27 17:03:12.322944');
INSERT INTO public.orders (id, customer_name, total_price, status, created_at, updated_at) VALUES (1, 'Budi', 10000, 'completed', '2025-11-25 16:59:58.799753', '2025-11-25 16:59:58.799753');


--
-- TOC entry 5101 (class 0 OID 16432)
-- Dependencies: 226
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.order_details (id, order_id, menu_id, quantity, price_at_time) VALUES (1, 1, 1, 1, 10000);
INSERT INTO public.order_details (id, order_id, menu_id, quantity, price_at_time) VALUES (2, 2, 1, 2, 10000);
INSERT INTO public.order_details (id, order_id, menu_id, quantity, price_at_time) VALUES (3, 3, 1, 4, 10000);
INSERT INTO public.order_details (id, order_id, menu_id, quantity, price_at_time) VALUES (4, 4, 1, 1, 10000);
INSERT INTO public.order_details (id, order_id, menu_id, quantity, price_at_time) VALUES (5, 5, 1, 1, 10000);
INSERT INTO public.order_details (id, order_id, menu_id, quantity, price_at_time) VALUES (6, 6, 1, 6, 10000);
INSERT INTO public.order_details (id, order_id, menu_id, quantity, price_at_time) VALUES (7, 7, 4, 1, 5000);
INSERT INTO public.order_details (id, order_id, menu_id, quantity, price_at_time) VALUES (8, 7, 1, 1, 10000);


--
-- TOC entry 5106 (class 0 OID 16476)
-- Dependencies: 231
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 5107 (class 0 OID 16485)
-- Dependencies: 232
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) VALUES ('jNX8metj7ojkwAPPPRodhIwfgWgWcT8QNzoCVmAO', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiY0o4UUh2UHJMZEduNjJMdTI2MDBSWWVFbmtZSXp5UVlFT3I1NGU0WCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJGhHUVdqaEhrRGtJUEgwNGFaemsvQ09WdGtlVVVjZlE4MFBVeUtiRVFNbVRMYTI5M1IzM0I2IjtzOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozMzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL21lbnVzIjtzOjU6InJvdXRlIjtzOjM2OiJmaWxhbWVudC5hZG1pbi5yZXNvdXJjZXMubWVudXMuaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjg6ImZpbGFtZW50IjthOjA6e319', 1765121175);
INSERT INTO public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) VALUES ('ZQYxTwfBjGtK8QD6P6go6Jvcd3IYXP8DLHnFdM9c', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNEpONXJqMUNHQk55bWsxWWdBYzR1dHd2OExGa2tSZlhBaVdYdm1YbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJGhHUVdqaEhrRGtJUEgwNGFaemsvQ09WdGtlVVVjZlE4MFBVeUtiRVFNbVRMYTI5M1IzM0I2IjtzOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozMzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL21lbnVzIjtzOjU6InJvdXRlIjtzOjM2OiJmaWxhbWVudC5hZG1pbi5yZXNvdXJjZXMubWVudXMuaW5kZXgiO319', 1765134411);


--
-- TOC entry 5105 (class 0 OID 16462)
-- Dependencies: 230
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) VALUES (1, 'admin', 'admin@admin.com', NULL, '$2y$12$hGQWjhHkDkIPH04aZzk/COVtkeUUcfQ80PUyKbEQMmTLa293R33B6', 'pElgfOzrwWe2fOvzgk8e2SK3HGVeRuUrccu3NZJ9S5tHMISIh9XsorPwly2W', '2025-11-26 20:17:43', '2025-11-26 20:17:43');


--
-- TOC entry 5120 (class 0 OID 0)
-- Dependencies: 219
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categories_id_seq', 9, true);


--
-- TOC entry 5121 (class 0 OID 0)
-- Dependencies: 238
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 5122 (class 0 OID 0)
-- Dependencies: 235
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- TOC entry 5123 (class 0 OID 0)
-- Dependencies: 221
-- Name: menus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.menus_id_seq', 25, true);


--
-- TOC entry 5124 (class 0 OID 0)
-- Dependencies: 227
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.migrations_id_seq', 3, true);


--
-- TOC entry 5125 (class 0 OID 0)
-- Dependencies: 225
-- Name: order_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order_details_id_seq', 8, true);


--
-- TOC entry 5126 (class 0 OID 0)
-- Dependencies: 223
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.orders_id_seq', 7, true);


--
-- TOC entry 5127 (class 0 OID 0)
-- Dependencies: 229
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


-- Completed on 2025-12-09 15:02:31

--
-- PostgreSQL database dump complete
--

\unrestrict 1xyYGaVHj3urpSZXVwI1TrBj9dQxSqOvJdCwtfudE6cDSLO7eBVnu9XdYwy0DBn

